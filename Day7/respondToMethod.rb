# respond_to? is a method in ruby which is used to check whether the passed method is accessible and executable in the provided class or not

num = 10

puts num.respond_to?(:round)      #true because round() method is accessible from Integer(num) class
puts num.respond_to?(:sqrt)       # flase, because sqrt() belongs to Math class, cannot access in Integer class
puts num.respond_to?(:floor)
puts num.respond_to?(:ceil)


class B 
    def welcome
    end
end

b = B.new
puts b.respond_to?(:welcome)  #true