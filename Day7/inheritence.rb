# We can achieve only single level inheritence in ruby
# In order to inherit a class we use '<' (anglular less than ) bracket

class A
    def greet
        puts "This is A class"
    end
end

class B < A
    def welcome
        puts "this is B class"
    end
end

b = B.new
b.welcome
b.greet