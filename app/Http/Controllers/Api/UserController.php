<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Ticket;
use App\User;
/**
 * @group Auth
 *
 * APIs for managing authenticate
 */
class UserController extends Controller
{
    
    public function index(Request $request){
    	$user =  $request->user();
    	
    	return response()->json([
    		"tickets" => $user->tickets,
    		"user" => $user,
    	]);
    }

    // public function addTicket(Request $request){
    // 	$ticket = Ticket::create($request->all());
    // 	return response()->json($ticket);
    // }
    public function updateTicket($id){
    	$ticket = Ticket::findOrFail($id);
    	$ticket->status = 1;
    	$ticket->save();
    	return response()->json($ticket);
    }
   
    
}
