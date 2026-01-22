class Product < ApplicationRecord 
  #class work on (22/01/26)

  #validation of form in through models (prewritten)
  #validates :stock, numericality: true #Checks whether the value is number or not.
  validates :description, length: {maximum: 500}  #limits the number of charaters to max 500
  validates :name, format: {with:/\A[a-zA-Z]+\z/, message: "Only letters are allowed"}  #regex for only alphabets.


  #Custom validations
  def check_price
    # if stock is 0, then cannot able to enter price value

    if (stock == 0 && price > 0)
      errors.add(:stock, "Stock value cannot be 0") #It shows the error on frontend
      # error.add "Stock value cannot be 0"  #Shows the error as loggers
    end
  end
  
  validate :check_price 

  # Logic to get only active records limiting to 10
  # def send_procuct
  #   @active_product_list = Product.limit(10).select{
  #     |each_product|
  #     each_product.is_active == true
  #   }
  #   return @active_product_list
  # end



  # Assignment by mam (21/01/26)

  #Check the availability of the stocks in the product
  def check_availability
    # Need to logics as assgn
    flag = false
   if stock > 0
    flag = true
    puts true 
   else
    flag = false
    puts false
   end
  #  puts "this is flag #{flag}"
   return flag
  end

  # Apply discount using case statement
  def apply_discount(percent)
    # write logic

    discounted_price = price

    case percent
    when 0..5
      discounted_price = (price - (price*0.05))
    when 6..10
      discounted_price = (price - (price*0.10))
    when 11..15
      discounted_price =  (price - (price*0.15))
    else
      discounted_price = (price - (price*0.20))
    end
    puts discounted_price
    return discounted_price
  end

  # Calculate total amount after discount
  def total_amount(discount_percent)
    #logic
    # formula for total amount = price after discount * stock 

    if check_availability
      total = stock * apply_discount(discount_percent)
    else
      total = 0
    end
    puts "total amount after discont for #{stock} is #{total}"
  end


  #Assignment on (22/01/26)  ==> create custom validations
  #using regex check the name alpha-numeric  ---> name
  #if the product is marked as active then only should able to add price --> price 
  #if the product is marked as active then only should able to add stock --> stock
  #To not allow special characters --> description
  #for status, use inbuilt validations to check. accept only if it is checked (acceptence: true)
  #use profinity:true on name 



end
