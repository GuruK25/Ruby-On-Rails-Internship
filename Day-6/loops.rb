# Loop statements are used to do the same work repeatedly until a specific condition met 

# 1. while loop 

# It executes until condition evalueates to false

puts "while loop"
i = 0
while i < 5
  puts i
  i += 1
end

# 2. until loop 
# This looping statement is opposite of while loop 
# It executes until the condition evaluates to true 
puts "until loop "
i = 0
until i > 5
  puts i
  i += 1
end

# 3. for loop 
# It is used to iterate on a range of values 

puts "for loop"
for i in 1..5
  puts i
end


# 5. Each iterator 
# used to iterate the values in an array, Hash and ranges
puts "each method"
arr = [1,2,3,4,5]
arr.each do |num| puts num
end

arr.each do |num| puts num*2 end

# 5. times loop 

puts "time loop"
i = 1
5.times do |i|
  puts i
end

# 6. loop do statement 
puts "loop-do statement"
i = 1
loop do
  puts i
  break if i > 5
  i += 1
end

# 7.each_with_index method 
# It is used when index is required 
puts "each_with_index method"
["a", "b", "c"].each_with_index do |val, index| 
  puts "#{index}: #{val}"
end