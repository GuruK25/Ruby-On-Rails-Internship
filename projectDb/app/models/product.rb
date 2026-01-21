class Product < ApplicationRecord 

  # Logic to get only active records limiting to 10
  # def send_procuct
  #   @active_product_list = Product.limit(10).select{
  #     |each_product|
  #     each_product.is_active == true
  #   }
  #   return @active_product_list
  # end
end
