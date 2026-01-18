# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




#MModification from here

# Product.create(name: "Office light",description: "LED light ontrol",price: 54.99,stock: 62, is_active:true)



# To add records using faker gem

Product.create(
    name: Faker:: Commerce.product_name,
    description:  "This is sample description (faker example)",
    price: Faker:: Commerce.price(range: 200..300),
    stock: rand(10..100),
    is_active: [true, false].sample  #class method which will select a random value in the given array
)