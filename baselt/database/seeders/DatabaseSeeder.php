<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Listing;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\User::factory(5)->create();

        Listing::factory(5)->create();

    //     Listing::created([
    //     'title'=>'laravel title',
    //     'tags'=>'laravel title',
    //     'company'=>'laravel title',
    //     'location'=>'laravel title',
    //     'email'=>'laravel title',
    //     'website'=>'laravel title',
    //     'description'=>'laravel title',

    //  ]);

    //  Listing::created([
    //     'title'=>'laravel title',
    //     'tags'=>'laravel title',
    //     'company'=>'laravel title',
    //     'location'=>'laravel title',
    //     'email'=>'laravel title',
    //     'website'=>'laravel title',
    //     'description'=>'laravel title',

    //  ]);


    }
}
