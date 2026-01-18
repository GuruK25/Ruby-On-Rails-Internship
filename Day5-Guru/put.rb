# Datatypes
a = 3
b = 3.14
c = true
d = [1,2,4]
e = {hi: "hellp"}
f = "raj"
g = :raj
h = nil

puts a.class
puts b.class
puts c.class 
puts d.class 
puts e.class
puts f.class
puts g.class
puts h.class


# Difference between puts method and print methods

# puts method prints values in new line 
# print method continue in same line




# User input

# print "Enter your number:"
# name = gets.chomp
# puts name

# print "Enter a number a:"
# a = gets.chomp
# print "Enter a number b:"
# b = gets.chomp

# puts a+b. #concats the values because input are taken as a string

# to typecast

print "Enter a number a:"
a = gets.chomp.to_i
print "Enter a number b:"
b = gets.chomp.to_i
print "Enter a lowercase string:"
c = gets.chomp.upcase
puts "int of a : #{a}, int of b : #{b}, uppercase : #{c}"
