<?php

use Illuminate\Database\Seeder;
use App\UserType;
use App\User;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

    	//Tipos de usuario
    	UserType::create([
    		'name' => 'admin'
    	]);
    	UserType::create([
    		'name' => 'user'
    	]);

    	// Administrador
    	User::create([
    		'name' => 'Admin',
    		'email' => 'admin@keiron.com',
    		'password' => bcrypt('123456'),
    		'user_type_id' => 1,
    	]);

    	// Usuarios
    	User::create([
    		'name' => 'Usuario 1',
    		'email' => 'usuario1@keiron.com',
    		'password' => bcrypt('123456'),
    		'user_type_id' => 2,
    	]);
    	User::create([
    		'name' => 'Usuario 2',
    		'email' => 'usuario2@keiron.com',
    		'password' => bcrypt('123456'),
    		'user_type_id' => 2,
    	]);
    }
}
