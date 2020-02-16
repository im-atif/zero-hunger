<?php

use Illuminate\Database\Seeder;

class TypesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Type::create([
            'type' => 'Donor'
        ]);
        
        \App\Type::create([
            'type' => 'Recipitent'
        ]);
        
        \App\SubType::create([
            'type_id' => 1,
            'sub_type' => 'Hotel'
        ]);
        
        \App\SubType::create([
            'type_id' => 1,
            'sub_type' => 'Restaurents'
        ]);
        
        \App\SubType::create([
            'type_id' => 1,
            'sub_type' => 'Marriage Hall'
        ]);
        
        \App\SubType::create([
            'type_id' => 1,
            'sub_type' => 'Other'
        ]);
        
        \App\SubType::create([
            'type_id' => 2,
            'sub_type' => 'NGO'
        ]);
        
        \App\SubType::create([
            'type_id' => 2,
            'sub_type' => 'Old Age Home'
        ]);
        
        \App\SubType::create([
            'type_id' => 2,
            'sub_type' => 'Orphanage'
        ]);
        
        \App\SubType::create([
            'type_id' => 2,
            'sub_type' => 'Other'
        ]);
    }
}
