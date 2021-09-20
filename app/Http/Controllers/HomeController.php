<?php

namespace App\Http\Controllers;

use App\StatusCount;
use App\TravelPackage;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $data = StatusCount::all();
        $items = TravelPackage::with(['galleries'])->get();
        return view('pages.home', [
            'data' => $data,
            'items' => $items
        ]);    

    }
}
