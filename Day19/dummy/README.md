# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

In this project, i am trying to test the Sequel association working and Rails association working.
Sequel association : Establising the relationship between tables using migration file.
rails generate migration AddProductToOrders product:references
(product ===> model file name, not Model name at class level and should be singular)
(references ===> it should be plural)

Onservations:
When i create a model (rails generate model Test_one name:string) lets say test_one. And migrate it.
Also i created another model with reference to Test_one (rails generate model Test_two name:string test_two:references).

Here parent table --> Test_one
Child table --> Test_two

This is sequel association.
Now i added some records to Test_one.

1. If i try to add records to Test_two by providing only name (skipping to give test_one_id), i am not able to add records.
   In rails console
   TestOne.create(name:"child1")
   ERROR!!

2. If i try to add records to Test_two by providing both name and id, the records get stored.
   In rails console
   TestOne.create(name:"child1", test_one_id:1)

Observation: The child table's fk cannot be null after establising association.

Now, to establish rails association.
Add
belongs_to :test_one (defaulty added) to Test_two model(child table)

Add
has_one :test_two to Test_one model (parent model)

Now this is rails level association.
rails association is bidirectional which means we can fetch the child model data in parent model and vice versa.
(it is not neccessary for parent class to have a column refering child records)

To access child record from parent model.
Tried in console
Parent.find(3).child

To access parent record from child model.
Child.find(1).parent

Task 1: Create two tables, establish relationship between the tables. Try to drop the parent and child tables in the database.
Result:
Parent table -> error! cannot drop table because another table is depend on it.

We can drop parent table after dropping child table or removing the fk/associations.

Task 2. Setting default values while adding fk/association for existing tables.
Steps,
create parent table and add some records
run migration to parent table
create child table, add some records
run migration

now, create another migration to establish the association b/w them
Observation:
Created new migration file to establish the association using
rails generate migration AddTest3ToTest4 name:string test3:references

tried to migrate the file:
migration gets aborted by saying (NoNullViolation)

bin/rails aborted!

StandardError: An error has occurred, this and all later migrations canceled: (StandardError)

PG::NotNullViolation: ERROR: column "test3_id" of relation "test4s" contains null values

Caused by:
ActiveRecord::NotNullViolation: PG::NotNullViolation: ERROR: column "test3_id" of relation "test4s" contains null values (ActiveRecord::NotNullViolation)  
C:/Users/gurub/OneDrive/Desktop/RailsWork/guru/Ruby-On-Rails-Internship/Day19/dummy/db/migrate/20260205141029_add_test3_to_test4.rb:3:in 'AddTest3ToTest4#change'

Caused by:
PG::NotNullViolation: ERROR: column "test3_id" of relation "test4s" contains null values (PG::NotNullViolation)
C:/Users/gurub/OneDrive/Desktop/RailsWork/guru/Ruby-On-Rails-Internship/Day19/dummy/db/migrate/20260205141029_add_test3_to_test4.rb:3:in 'AddTest3ToTest4#change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
PS C:\Users\gurub\OneDrive\Desktop\RailsWork\guru\Ruby-On-Rails-Internship\Day19\dummy>

We can overcome this in two ways.

1. By changing null: false to null true in migration file
   default value will be : add_reference :test4s, :test3, null: false, foreign_key: true
   change to add_reference :test4s, :test3, null: true, foreign_key: true

2. By adding default values (replaced with default values)
   default : add_reference :test4s, :test3, null: false, foreign_key: trueS
   changed to: add_reference :test4s, :test3, null: false, foreign_key: true, default: 99

   DETAIL: Key (test3_id)=(99) is not present in table "test3s".
   C:/Users/gurub/OneDrive/Desktop/RailsWork/guru/Ruby-On-Rails-Internship/Day19/dummy/db/migrate/20260205142431_add_test3_to_test4.rb:3:in 'AddTest3ToTest4#change'

   Caused by:
   PG::ForeignKeyViolation: ERROR: insert or update on table "test4s" violates foreign key constraint "fk_rails_cdc55fc62e" (PG::ForeignKeyViolation)
   DETAIL: Key (test3_id)=(99) is not present in table "test3s".
   C:/Users/gurub/OneDrive/Desktop/RailsWork/guru/Ruby-On-Rails-Internship/Day19/dummy/db/migrate/20260205142431_add_test3_to_test4.rb:3:in 'AddTest3ToTest4#change'
   Tasks: TOP => db:migrate

   Error because default value is id record is not present in parent table
   Should pass the id of existing record as a default value.

   changed to: add_reference :test4s, :test3, null: false, foreign_key: true, default: 1

   asks: TOP => db:migrate
   (See full trace by running task with --trace)
   PS C:\Users\gurub\OneDrive\Desktop\RailsWork\guru\Ruby-On-Rails-Internship\Day19\dummy> rails db:migrate
   == 20260205142431 AddTest3ToTest4: migrating ==================================
   -- add_reference(:test4s, :test3, {null: false, foreign_key: true, default: 1})
   -> 0.0251s
   == 20260205142431 AddTest3ToTest4: migrated (0.0259s) =========================

Migrated
