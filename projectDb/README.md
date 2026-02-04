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

Day 17 On 03/02/26

When this command is run:
rails generate model Product::Category
-> The intention was to create a Catergory table within the scope of Product.
-> This command creates, a folder ./app/models/product/category.rb
-> The existing file product.rb is rewritten as a Module.
Because, rails assumes Product as a namespace, not a database backed Model.
Rails generator logic is, If you generate X::Y, Rails assumes X is namespace, not table.
Therefore using Model methods such as create() does not work until it is converted back to Model.

It was a mistake happend while creating a scoped model Product::catergory.
rolled back the file.
