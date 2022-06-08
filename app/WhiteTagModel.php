<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class WhiteTagModel extends Model
{
    protected $table = 'white_tag';
    protected $fillable = [
        'id_curriculum', 'id_user', 'id_training_module', 'start', 'actual', 'target'
    ];
    public $timestamps = false;

    public function score($id_user,$level)
    {
        $counting = WhiteTagModel::select(DB::raw("COUNT(*) as cnt"),"level")
                                 ->join("users",function ($join) use ($id_user){
                                     $join->on("users.id","white_tag.id_user")
                                        ->where([
                                            ["white_tag.id_user",$id_user],
                                            ["white_tag.actual",">=","cd.target"]
                                        ]);
                                 })
                                 ->join("competencies_directory as cd","cd.id_directory","white_tag.id_directory")
                                 ->join("curriculum as crclm","crclm.id_curriculum","cd.id_curriculum")
                                 ->where('crclm.level',$level)
                                 ->get();
        return $counting;
    }

}
