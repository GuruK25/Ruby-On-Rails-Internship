class Greet
    @@address = "bandri"
    def initialize(name)
        @name=name
    end

    #instance methods
    def example_instance_methods
        puts "Hello, Welcome #{@name}"
        puts @@address. #(can access class variables in instance methods)
    end

    #class methods
    def self.example_class_methods
        # puts @name. (cannot access instance variables in class methods)
        puts @@address
    end

end

p = Greet.new("guru")
p.example_instance_methods
Greet.example_class_methods
