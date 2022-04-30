Lakersbnb
=================

An Airbnb Clone built in Ruby using Sinatra, Capybara, and PostgreSQL.

![Homepage](./app/assets/Screenshot%202022-04-30%20at%2007.35.40.png)

## Features

- User authentication
- Space creation
- Space approval

## Setup

```
bundle
 ```

 ### To set up the database

 Connect to `psql` and create the `Lakersbnb` database:

 ```
 CREATE DATABASE Lakersbnb;
 ```

 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

 ### To run the Lakersbnb app:

 ```
 rackup -p 3000
 ```

 To get started, navigate to `localhost:3000/`

### Test setup

Follow the database setup instructions, but with the `Lakersbnb_test` database.

To run tests:

```
rspec
```
