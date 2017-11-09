<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $test_user_password = getenv('TEST_USER_PASSWORD');

        DB::table('users')->insert([
            'name' => "Wilt Chamberlain",
            'email' => "will@uunet.net",
            'password' => bcrypt($test_user_password),
        ]);

        factory(App\User::class, 50)->create();
    }
}
