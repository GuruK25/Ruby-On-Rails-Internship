# Object heirarchy and method lookup

# method lookup: It is the way controller searches for the method accross from current class to its super classes 

class Parent
    def greet
        puts "this is parent class"
    end
end

class Child < Parent
    def greet
        puts "this is child class"
    end
end

puts Child.ancestors

# Output: 
#     Child  --> This is the child class. 
#     Parent  --> super class of child class
#     Object -->  Class (inherited by default to all the classes)
#     Kernel  --> A Module included in the Object class
#     BasicObject  --> Supermost class in the hierarchy