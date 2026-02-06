class Product < ApplicationRecord 
  # Assignment by mam on (28/01/26). To add a ActionText to products table.
  has_rich_text:details    #Part of assignment
  
  
  # Day 12 (29/01/26)
  # has_one_attached:product_picture    For single attachement
  has_many_attached:product_pictures     # For multiple attachment

  # Tag table relation(habt)
  has_and_belongs_to_many :tags
                          # (p)

  # Table association with offers
  has_many :offers, through: :product_offers

  # manytoone relations
  has_many :orders

  # Assignment (29/01/26)
  has_one_attached:invoice

  #class work on (22/01/26)

  #validation of form in through models (prewritten)
  validates :stock, numericality: true #Checks whether the value is number or not.
  validates :description, length: {maximum: 500}  #limits the number of charaters to max 500
  validates :name, format: {with:/\A[a-zA-Z]+\z/, message: "Only letters are allowed"}  #regex for only alphabets.
  validate :check_price 

  validate :alpha_numeric   # Custom validation (Assignment)
  validate :valid_price     # Custom validation (Assignment)
  validate :valid_stock     # Custom validation (Assignment)
  validate :avoid_special_characters   # Custom validation (Assignment)
  validates :is_active, acceptance:true   # In-build validation (Assignment)  ==> checks the radio is true or false. if true then only accepts or else not   [Install using command gem install acceptance]
  # validates :name, profanity:true         #In-built validation  (Assignment)  ==> Avoids bad words  [gem install profanity]


  # validates :product_pictures, attached:true, content_type: ['image/jpg', 'image/jpeg'], size: {less_than: 2.megabytes, message: 'is too large'}
  # validates :invoice, attached:true, content_type:

  # Scopes 23/01/26
  scope :out_of_stock, -> { where("stock <= ?", 0) } 

  #Assignment by mam (23/01/26)
  # To write the above scope (out_of_stock) with new route (instructions on slack app to create a new route)
  
  # scope :test_scope_for_joins, -> {joins(name_of_table.where)}
  # scope :test_scope, -> query{}  #used to write a complex query inside braces{}. Any sequel query

  #Custom validations
  def check_price
    # if stock is 0, then cannot able to enter price value

    if (stock == 0 && price > 0)
      errors.add(:stock, "Stock value cannot be 0") #It shows the error on frontend
      # errors.add "Stock value cannot be 0"  #Shows the error as loggers
    end
  end
  
  

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
  #use profanity:true on name 


  def alpha_numeric
    # Here i am using match? method. It is a ruby method which is used to compare the regex expression with the string.
    # Syntax: string.match?(reg expression)
    #It evaluates to true or false
    #regex is enclosed in / /
    if !name.match?(/\A[a-zA-Z0-9]+\z/)
      errors.add(:name, "Name should be alpha-Numeric value (Avoid special characters, space)")
    end
  end

  def valid_price
    # Allows price to add only if the is_active is checked
    if is_active == false
      errors.add(:price, "To add price, active status should be true")
    end
  end
  
  def valid_stock
    # Allows stock to add only if the is_active is checked
    if is_active == false
      errors.add(:stock, "To add stock, active status should be true")
    end
  end

  def avoid_special_characters
    #Avoids special characters in the field
    if !description.match?(/\A[a-zA-Z0-9 ]+\z/)
      errors.add(:description, "Description field should not constain special characters")
    end
  end


  # To use profanity validator





  
end
