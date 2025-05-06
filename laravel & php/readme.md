

##### This command is used to create a Laravel project using the Composer service defined in docker-compose.yaml. Before running it, you must create the src folder in the root directory
docker-compose run --rm composer create-project --prefer-dist laravel/laravel .

##### After the Laravel application has been created, change the database connection settings in the .env file inside the Laravel project. Use the credentials that were set during the MySQL setup or mysql.env file credentials. and db_host equal to mysql as define in docker-compose.yaml    

## use this command to run 

docker-compose up -d server php mysql 
