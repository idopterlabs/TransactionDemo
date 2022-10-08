# Transactions in ActiveRecord

This demo app is a simple example of using transactions in ActiveRecord.

## Running

Setup the app:

* Run `bundle` to download dependencies
* Run `./bin/rails db:create` to create the database
* See _db/seeds.rb_ for the code example.
* Comment either one of the entries for the `model` attribute.
* Run `./bin/rails db:seed` to populate the db. This command should fail, since the `model` column was defined as not allowing `null` values according to its [migration file](db/migrate/20221007222246_create_guitars.rb)
* Check the database and ensure NO records were populated in the "guitars" table.

A simple way to check the database is running the command below

* `psql teste_trans_dev`
* `select * from guitars`