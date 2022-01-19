<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class alumno_Seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for($i=0;$i<50;$i++){
            \DB::table("alumno")->insert(
                array(
                    'id'        => $faker->unique()->randomNumber,
                    'nombre'    => $faker->firstName("male"),
                    'telefono'  => $faker->randomElement(['966741427','649682140','679462431','616557159']),
                    'edad'      => $faker->randomElement(['34','60','56','40']),
                    'password'  =>$faker->password,
                    'email'     => $faker->email("email"),
                    'sexo'      => $faker->randomElement(['Hombre','Mujer'])
                )
            );
        }
    }
}
