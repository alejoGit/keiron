<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use App\Http\Controllers\Controller;

/**
 * @group Auth
 *
 * APIs for managing authenticate
 */
class AuthController extends Controller
{
    
    /**
     * Login user and create token
     *
     * @param email string required . Example: admin@mail.com
     * @param  password string required . Example: 123456
     * @response {
     *   "access_token": "{AUTH_TOKEN}",
     *   "expires_at": "2020-02-27 22:22:33",
     *	
     * } 
     * @response 401 {
     *      "message": "Unauthorized"
     * }
     */
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        $credentials = request(['email', 'password']);

        if(!Auth::attempt($credentials))
            return response()->json([
                'message' => 'Unauthorized'
            ], 401);
        $user = $request->user();
        $tokenResult = $user->createToken($request->client);
        $token = $tokenResult->token;

        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(1);
        
        $token->save();
        
        return response()->json([
            'access_token' => $tokenResult->accessToken,
            'expires_at' => Carbon::parse($tokenResult->token->expires_at)->toDateTimeString(),
            'user_type' => $user->user_type->name,
        ]);
    }


    /**
     * Get Authenticated User
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function getUser (Request $request) {
        $user = Auth::user();
        $user->user_roles =  $user->roles->pluck('name');
        return response()->json(
            [
                "user"=>$user,
            ]);
    }

    /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }
   
    
}
