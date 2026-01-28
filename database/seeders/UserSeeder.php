<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name'      => 'Demo Admin',
            'email'     => 'demoadmin@gmail.com',
            'password'  => Hash::make('admin@009988'),
            'user_type' => 1, //Admin
        ]);

        User::create([
            'name'      => 'Demo Agent',
            'email'     => 'demoagent@gmail.com',
            'password'  => Hash::make('agent@4488'),     
            'user_type' => 2, //Agent
        ]);

        User::create([
            'name'      => 'Demo Student',
            'email'     => 'demostudent@gmail.com',
            'password'  => Hash::make('student@1122'),
            'user_type' => 3, //Student
        ]);
    }
}
