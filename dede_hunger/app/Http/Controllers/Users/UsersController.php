<?php

namespace App\Http\Controllers\Users;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        return response()->json(['data' => $users], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'first_name'    =>      'required',
            'last_name'     =>      'required',
            'email'         =>      'required'
        ]);

        $user = User::where('email', $request->email)->first();

        if (!$user) {

            return response()->json(['data' => \App\Request::all()], 200);


            // $isDonor = \App\DonorDetail::where('user_id', $user->id);

            // if($isDonor) {
            //     return response()->json(['data' => \App\Request::all()], 200);
            // } else {
            //     return response()->json(['data' => \App\Request::all()], 200);
            // }
            // return response()->json(['data' => $user], 200);

            $user = User::create([
                'first_name'        =>      $request->first_name,
                'last_name'         =>      $request->last_name,
                'email'             =>      $request->email,
                'password'          =>      bcrypt('password')
            ]);
        }
        // else {

        //     $user = User::create([
        //         'first_name'        =>      $request->first_name,
        //         'last_name'         =>      $request->last_name,
        //         'email'             =>      $request->email,
        //         'password'          =>      bcrypt('password')
        //     ]);

        //     // return response()->json(['data' => $user], 201);
        // }

        return response()->json(['data' => \App\Request::all()], 200);

            
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
