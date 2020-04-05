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
class AdminController extends Controller
{
    
    public function index(){
    	$tickets = Ticket::orderBy('created_at','desc')->get();
    	foreach ($tickets as $ticket) {
    		$ticket->user;
    	}
    	$users = User::where('user_type_id',2)->get();

    	return response()->json([
    		"tickets" => $tickets,
    		"users" => $users,
    	]);
    }

    public function addTicket(Request $request){
    	$ticket = Ticket::create($request->all());
    	return response()->json($ticket);
    }
    public function deleteTicket($id){
    	$ticket = Ticket::findOrFail($id);
    	$ticket->delete();
    	return response()->json($ticket);
    }
   
    
}
