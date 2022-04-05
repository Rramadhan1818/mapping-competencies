<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CompetenciesDirectoryModel;
use App\CurriculumModel;
use App\Jabatan;
use Validator;
use DB;
use Yajra\Datatables\Datatables;

class CompetenciesDirectory extends Controller
{   
    public function jsonDataTable(Request $request)
    {
        $select = [
            "id_directory","cr.id_curriculum","cr.no_training_module as no_training_module","cr.training_module as training_module"
        ];
        $data = CompetenciesDirectoryModel::select($select)
                                            ->join("curriculum as cr",function ($join){
                                                $join->on("cr.id_curriculum","competencies_directory.id_curriculum");
                                            })
        ->groupBy("cr.id_curriculum")->get();
        return DataTables::of($data)
                        ->addColumn('action', function ($row) {
                            $btn = '<div class="d-flex-wrap text-center m-auto"><button data-toggle="modal" data-target="#modal-tambah" data-id="'.$row->id_curriculum.'" onclick="formCompetencyDirectory(this)" class="btn btn-inverse-success float btn-icon edit-directory mr-1"><i class="icon-file menu-icon"></i></button>
                            <button data-toggle="modal" data-target="#modal-detail" onclick="detailCompetencyDirectory(this)" data-id="'.$row->id_curriculum.'"  class="btn btn-inverse-info float btn-icon"><i class="icon-eye"></i></button></div>';
                            return $btn;
                        })
                        ->rawColumns(['action'])
                        ->make(true);
    }

    public function index()
    {
        return view('pages.admin.competency-directory.index');
    }
    
    public function formCompetency(Request $request)
    {
        $type = $request->type;
        $select = [
            "id_curriculum","training_module","no_training_module"
        ];
        $competencies = CurriculumModel::select($select)->whereRaw("id_curriculum NOT IN (select cd.id_curriculum from competencies_directory as cd group by cd.id_curriculum)")->get();
        $jobTitles = Jabatan::all();
        if($request->type == 'add'){
            $curriculum = null;
            $directories = [];
        }else{
            $curriculum = CurriculumModel::where("id_curriculum",$request->id)->first();
            $select = [
                "competencies_directory.id_curriculum","competencies_directory.id_job_title",
                DB::raw("CONCAT('{\"list\":[',GROUP_CONCAT(CONCAT('{','\"id\":\"',id_directory,'\",','\"between\":\"',between_year,'\",','\"target\":\"',target,'\"','}') ORDER BY between_year ASC SEPARATOR ','),']}') AS list")
            ];
            $directories = CompetenciesDirectoryModel::select($select)
                                                    ->join("curriculum as cr",function ($join) use ($request){
                                                        $join->on("cr.id_curriculum","competencies_directory.id_curriculum")
                                                            ->where("competencies_directory.id_curriculum",$request->id);
                                                    })
                                                    ->groupBy("competencies_directory.id_curriculum","competencies_directory.id_job_title")
                                                    ->get();
        }
        return view("pages.admin.competency-directory.form",compact("competencies","type","jobTitles","curriculum","directories"));
    }

    public function addRow(Request $request)
    {
        $jobTitles = Jabatan::all();
        $time = rand(time(),2);
        return view("pages.admin.competency-directory.tr",compact("jobTitles","time"));
    }

    public function storeCompetencyDirectory(Request $request)
    {
        $request->validate([
            "id_curriculum" => "required|numeric",
            "datas" => "required|array",
            "datas.*.id_job_title" => "required|string",
            "datas.*.data" => "required|array",
            // "datas.*.data.*.between" => "required|numeric",
            // "datas.*.data.*.target" => "required|numeric|min:0|max:5"
        ]);
        try {
            $data = $this->validate_input_v2($request);
            $directoryId = [];
            $insert = [];
            for ($i=0; $i < count($data["datas"]); $i++) { 
                for ($j=0; $j < count($data["datas"][$i]["data"]); $j++) { 
                    $tempData = [
                        "id_curriculum" => $data["id_curriculum"],
                        "id_job_title" => $data["datas"][$i]["id_job_title"],
                        "between_year" => $data["datas"][$i]["data"][$j]["between"],
                        "target" => $data["datas"][$i]["data"][$j]["target"]
                    ];
                    if(isset($data["datas"][$i]["data"][$j]["id_directory"])){
                        array_push($directoryId,$data["datas"][$i]["data"][$j]["id_directory"]);
                        CompetenciesDirectoryModel::where("id_directory",$data["datas"][$i]["data"][$j]["id_directory"])
                            ->update($tempData);
                    }else{
                        $cek = CompetenciesDirectoryModel::where([
                            ["id_curriculum",$data["id_curriculum"]],
                            ["id_job_title",$data["datas"][$i]["id_job_title"]]
                            ])->count();
                        if($cek == 0){
                            array_push($insert,$tempData);
                        }
                    }
                }
            }
            
            if(count($directoryId) > 0){
                CompetenciesDirectoryModel::where("id_curriculum",$data["id_curriculum"])->whereNotIn("id_directory",$directoryId)->delete();
            }
            if(count($insert) > 0){
                CompetenciesDirectoryModel::insert($insert);
            }
            DB::commit();
        } catch (\Exception $e) {
            dd($e->getMessage());
            DB::rollback();
        }
        return response()->json(['code' => 200, 'message' => 'Post successfully'], 200);
    }

    public function detail(Request $request)
    {
        $request->validate([
            "id" => "required|numeric"
        ]);
        $data = $this->validate_input_v2($request);
        $curriculum = CurriculumModel::where("id_curriculum",$data["id"])->first();
        $select = [
            "competencies_directory.id_curriculum","jt.nama_job_title",
            DB::raw("CONCAT('{\"list\":[',GROUP_CONCAT(CONCAT('{','\"id\":\"',id_directory,'\",','\"between\":\"',between_year,'\",','\"target\":\"',target,'\"','}') ORDER BY between_year ASC SEPARATOR ','),']}') AS list")
        ];
        $directories = CompetenciesDirectoryModel::select($select)
                                                ->join("curriculum as cr",function ($join) use ($data){
                                                    $join->on("cr.id_curriculum","competencies_directory.id_curriculum")
                                                        ->where("competencies_directory.id_curriculum",$data["id"]);
                                                })
                                                ->join("job_title as jt","jt.id_job_title","competencies_directory.id_job_title")
                                                ->groupBy("competencies_directory.id_curriculum","competencies_directory.id_job_title")
                                                ->get();
        return view("pages.admin.competency-directory.detail",compact("curriculum","directories"));
    }
}
