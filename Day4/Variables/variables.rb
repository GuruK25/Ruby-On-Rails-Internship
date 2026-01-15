# In ruby variables are classifies into 5 types
# 1. local variables. (lower case or _)
# 2. Global variables. ($)
# 3. Instance variables. (@)
# 4. Class variables. (@@)
# 5. constant variables (upper case)

# Datatypes
# 1. Integer
# 2. Float
# 3. String
# 4. Array
# 5. Hash
# 6. Symbol
# 7. Boolean
# 8. NilClass


product = :car
cd = "veer"

puts product.class
puts cd.class

puts product.object_id
puts cd.object_id

# Inbuilt methods
# class
# object_id

10.times do
    puts product.object_id
end

10.times do
    puts cd.object_id
end



# local variables
def localVariables
    abc = "hello"
    _bcd = "welcome"
    puts _bcd
end
localVariables
# puts abc (cannot access because out of scope)

#Instance variables

class Var 
    # @instanceVariables = 0;
    @@classVariblse = 0;

    def initialize
        @instanceVariables = 0
        @instanceVariables = @instanceVariables+1
        @@classVariblse = @@classVariblse+1

    end

    def details
        puts @instanceVariables
        puts @@classVariblse
    end
end

v1 = Var.new;
v2 = Var.new;
v1.details
# v2.details

v3 = Var.new
v1.details

# class variables shares values accross different objects but instance variables resets their values everytime an object is created.