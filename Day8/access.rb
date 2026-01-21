# Access specifiers
# They control the accessing of methods of a class
# there are 3 Access specifiers
# 1. public 
# 2. private
# 3. protected


# 1. public (default)
# method can be called outside the class, in the same class and subclass

class User
    def greet
        puts "hello, greetings from User"
    end
end

u = User.new
u.greet  # accessible and executes without error

# 2. protected 
# method cannot be called outside the class but called inside the class and from subclass 

class User2
    protected
    def greet
        puts "greetings from user 2"
    end
end

u2 = User2.new
# u2.greet   #gets error

class Sub < User2
    def call
        greet   # can be accessed from subclass
    end
end

s = Sub.new
s.call   



# 3. private 
class A 

    private 
    
    def greet
        puts "greetings from A"
    end
end

a = A.new  
# a.greet    #cannot call private methods outside the class without a public method(which helps to access the private method)

class B < A 
    def welcome
        puts "greetings from B"
    end

    def access_super_class_method
        greet
    end
end

b = B.new
b.welcome
b.access_super_class_method
