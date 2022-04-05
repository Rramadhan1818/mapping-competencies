<?php

namespace App\Http\Controllers;
use App\WhiteTagModel;
use App\TagingReason;
use DB;
use Response;
use Auth;
use Validator;
use Yajra\Datatables\Datatables;


use Illuminate\Http\Request;

class Tagging extends Controller
{   
    public function index(){
        return view ("pages.admin.taging-list.index");
    }

    public function tagingJson()
    {
        $select = [
            "id_taging_reason","white_tag.id_white_tag","tr.no_taging as noTaging","nama_pengguna as employee_name",
            "skill_category","training_module",
            "level","training_module_group","white_tag.actual as actual",
            "cd.target as target",DB::raw("(white_tag.actual - cd.target) as actualTarget"),DB::raw("(IF((white_tag.actual - cd.target) < 0,'Follow Up','Finished' )) as tagingStatus")
        ];
        $data = WhiteTagModel::select($select)
                            ->join("competencies_directory as cd",function ($join){
                                $join->on("cd.id_directory","white_tag.id_directory");
                            })
                            ->leftJoin("taging_reason as tr","tr.id_white_tag","white_tag.id_white_tag")
                            ->join("users","users.id","white_tag.id_user")
                            ->join("curriculum","curriculum.id_curriculum","cd.id_curriculum")
                            ->join("skill_category as sc","sc.id_skill_category","curriculum.id_skill_category")
                            ->whereRaw("white_tag.actual < cd.target OR (SELECT COUNT(*) FROM taging_reason where white_tag.id_white_tag = taging_reason.id_white_tag) > 0")
                            ->get();

        return Datatables::of($data)
                        ->addIndexColumn()
                        ->addColumn('action', function ($row) {
                            if(isset($row->id_taging_reason)){
                                $btn = '<button white-tag-id="'.$row->id_white_tag.'" taging-reason-id="'.$row->id_taging_reason.'" onclick="formTaging(this)" class="button-add btn btn-inverse-success btn-icon mr-1" data-toggle="modal" data-target="#modal-tambah"><i class="icon-plus menu-icon"></i></button>';
                                $btn = $btn . '<button type="button" onclick="detailTaging('.$row->id_taging_reason.')" class="btn btn-inverse-info btn-icon" data-toggle="modal" data-target="#modal-detail"><i class="ti-eye"></i></button>';
                                return $btn;
                            }else{
                                $btn = '<button white-tag-id="'.$row->id_white_tag.'" taging-reason-id="'.$row->id_taging_reason.'" onclick="formTaging(this)" class="button-add btn btn-inverse-success btn-icon mr-1" data-toggle="modal" data-target="#modal-tambah"><i class="icon-plus menu-icon"></i></button>';
                                return $btn;
                            }
                        })
                        ->addIndexColumn()
                        ->rawColumns(['action'])
                        ->make(true);
    }

    public function formTaggingList(Request $request)
    {   
        $id_white_tag = $request->white_tag_id;
        $id_reason_tag = $request->reasonTagId;
        $white_tag = WhiteTagModel::select("actual")
                                    ->where("id_white_tag",$request->white_tag_id)
                                    ->first();
        if(isset($id_reason_tag)){
            $select = [
                "taging_reason.id_taging_reason","taging_reason.id_white_tag as id_white_tag","year","period",
                "date_open","learning_method","trainer","date_plan_implementation",
                "notes_learning_implementation","date_closed",
                DB::raw("(TIME_FORMAT(taging_reason.start,'%H:%i')) as start"),
                DB::raw("(TIME_FORMAT(finish,'%H:%i')) as finish"),"duration","date_verified",
                "result_score","notes_for_result"
            ];
            $taging = TagingReason::select($select)
                                    ->join("white_tag as wt",function ($join) use ($id_reason_tag){
                                        $join->on("taging_reason.id_white_tag","wt.id_white_tag")
                                            ->where("id_taging_reason",$id_reason_tag);
                                    })
                                    ->first();
        }else{
            $taging = null;
        }
        return view("pages.admin.taging-list.form",compact(["id_white_tag","id_reason_tag","taging","white_tag"]));
    }

    public function actionTagingList(Request $request)
    {
        $messages = [
            'required' => ':attribute wajib diisi !',
            'min'      => ':attribute harus di isi minimal :min karakter !!',
            'max'      => ':attribute jangan diisi lebih dari :max karakter !!'
        ];

        $validate = $this->validate($request,[
            "id_taging_reason" => "nullable|numeric",
            "id_white_tag" => "required|string|min:15|max:15",
            "year" => "required|digits:4",
            "period" => "required|string|max:20",
            "date_open" => "required|date_format:Y-m-d",
            "learning_method" => "required|string|max:50",
            "trainer" => "required|string|max:50",
            "date_plan_implementation" => "required|date_format:Y-m-d",
            "notes_learning_implementation" => "nullable|string",
            "date_closed" => "required|date_format:Y-m-d",
            "start" => "required|date_format:H:i",
            "finish" => "required|date_format:H:i",
            "duration" => "nullable|string",
            "date_verified" => "required|date_format:Y-m-d",
            "result_score" => "required|numeric|min:0|max:5",
            "notes_for_result" => "nullable|string"
        ],$messages);
        DB::beginTransaction();
        try {
            $data = $request->all();
            $tempData = [
                "year" => $data["year"],
                "period" => $data["period"],
                "date_open" => $data["date_open"],
                "learning_method" => $data["learning_method"],
                "trainer" => $data["trainer"],
                "date_plan_implementation" => $data["date_plan_implementation"],
                "notes_learning_implementation" => $data["notes_learning_implementation"],
                "date_closed" => $data["date_closed"],
                "start" => $data["start"],
                "finish" => $data["finish"],
                "duration" => $data["duration"],
                "date_verified" => $data["date_verified"],
                "result_score" => $data["result_score"],
                "notes_for_result" => $data["notes_for_result"]
            ];
            if(isset($data["id_taging_reason"])){
                TagingReason::where("id_taging_reason",$data["id_taging_reason"])
                ->update($tempData);
                $messages = "Success! Data berhasil diperbaharui";
            }else{
                $lastId = TagingReason::orderBy("id_taging_reason","desc")->first();
                if(isset($lastId)){
                    $lastNumber = (int)$lastId->no_taging;
                }else{
                    $lastNumber = 0;
                }
                $tempData["no_taging"] = str_pad($lastNumber+1,5,'0',STR_PAD_LEFT);
                $tempData["id_white_tag"] = $data["id_white_tag"];
                $tempData["id_verified_by"] = Auth::user()->id;
                TagingReason::insert($tempData);
                $messages = "Success! Data berhasil di Follow Up";
            }
            WhiteTagModel::where("id_white_tag",$data["id_white_tag"])->update(["actual"=>$data["result_score"]]);
            DB::commit();
            return Response::json(['success' => $messages]);
        } catch (\Exception $e) {
            DB::rollback();
            return Response::json(['errors' => $e->getMessage(),'message'=>'error'],402);
        }
    }

    public function detail(Request $request){
        $validator = Validator::make($request->all(),[
            "id" => "required|numeric"
        ]);

        if($validator->fails()){
            dd($validator->errors());
        }else{
            $select = [
                "taging_reason.no_taging as no_taging",
                "taging_reason.year as year",
                "taging_reason.period as period",
                "member.nama_pengguna as name",
                "curriculum.training_module_group as training_module_group",
                "curriculum.training_module as training_module",
                "wt.actual as actual",
                "cd.target as target",
                "taging_reason.date_open as date_open",
                "taging_reason.date_plan_implementation as date_plan_implementation",
                "taging_reason.learning_method as learning_method",
                "taging_reason.trainer as trainer",
                "taging_reason.notes_learning_implementation as notes_learning_implementation",
                "taging_reason.date_closed as date_closed",
                DB::raw("TIME_FORMAT(taging_reason.start,'%H:%i') as start"),
                DB::raw("TIME_FORMAT(taging_reason.finish,'%H:%i') as finish"),
                "taging_reason.date_verified as date_verified",
                "verified.nama_pengguna as verified_by",
                "taging_reason.result_score as result_score",
                "taging_reason.notes_for_result as notes_for_result"
            ];
            $data = TagingReason::select($select)
                                ->join("users as verified",function ($join) use ($request){
                                    $join->on("verified.id","id_verified_by")
                                            ->where("id_taging_reason",$request->id);
                                })
                                ->join("white_tag as wt","wt.id_white_tag","taging_reason.id_white_tag")
                                ->join("users as member","member.id","wt.id_user")
                                ->join("competencies_directory as cd","cd.id_directory","wt.id_directory")
                                ->join("curriculum","curriculum.id_curriculum","cd.id_curriculum")
                                ->first();
            return view("pages.admin.taging-list.detail",compact("data"));
        }
    }
}
