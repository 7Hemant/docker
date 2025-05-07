# Laravel Docker Setup

This guide provides instructions for setting up a Laravel application using Docker Compose, Composer,Nginx and MySQL.

## Prerequisites

- Docker and Docker Compose installed on your machine.
- A `docker-compose.yml` file defining the necessary services.

## Step 1: Create the Laravel Project

Before running the command, ensure that the `src` directory exists in your project root.

```bash
docker-compose run --rm composer create-project --prefer-dist laravel/laravel .
```
#  Configure the Database Connection

After the Laravel application is created, update the .env file located inside the src directory to configure the database connection:
```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laravel
DB_PASSWORD=secert
```

Ensure that the DB_HOST is set to mysql, which corresponds to the MySQL service name defined in your docker-compose.yml file. and also mysql.env file for credentials

if use face any error try this command --docker-compose run --rm artisan migrate 

#  Start the Services

```bash
docker-compose up -d server php mysql
```
This command starts the server, php, and mysql services in detached mode.
