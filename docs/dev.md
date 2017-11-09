* need to write down instructions for installing composer and php71 and npm on mac

* make alias "dca" that runs docker-compose exec app artisan ..."
alias dca="docker-compose exec app php artisan $@"

* make Post model (also creates a migration)
php artisan make:model Posts -m

* make User table seeder
php artisan make:seeder UserTableSeeder

* run TestUserSeeder
php artisan db:seed --class=TestUserSeeder

* create a new migration 'add_to_users_table', to add columns to users table
php artisan make:migration add_to_users_table --table=users

* set up auth scaffolding ( remember to migrate after )
dca make:auth
