<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class MyController extends Controller
{
    function dropdownPage(){
    	return view('multiple_dropdown');
    }

    function divisionView(){
        $divData=DB::table('division')
        ->get();
        return view('multiple_dropdown')->with('divName',$divData);
    }

    function districtView(Request $req){
    	$districtData=DB::table('district')
    	->where('division_name',$req->divValue)
    	->OrderBy('district_name','ASC')
    	->pluck('district_name','district_name');
    	return response()->json($districtData);
    }
     function thanaView(Request $req){
    	$thanaData=DB::table('thana')
    	->where('district_name',$req->thanaValue)
    	->OrderBy('thana_name','ASC')
    	->pluck('thana_name','thana_name');
    	return response()->json($thanaData);
    }

}
