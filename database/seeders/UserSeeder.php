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
            'name'      => 'Mr Admin',
            'email'     => 'admin@gmail.com',
            'password'  => Hash::make('pa$$word'),
            'user_type' => 1, // Admin
        ]);

        User::create([
            'name'      => 'Mr Agent',
            'email'     => 'agent@gmail.com',
            'password'  => Hash::make('pa$$word'),
            'user_type' => 2, // Agent
        ]);

        User::create([
            'name'      => 'Mr Student',
            'email'     => 'student@gmail.com',
            'password'  => Hash::make('pa$$word'),
            'user_type' => 3, // Student
        ]);
    }
}
