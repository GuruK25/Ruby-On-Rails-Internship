# Conditinal statements in ruby is used to choose the execution of a block based on certain conditions

# 1. if conditions
# 2. if - else
# 3. if elsif condition
# 4. Ternary operator
# 5. case ladder 
# 6. unless

# 1. if Conditinal statements

age = 23
if age > 18
    p "you can drive a bike"
end

# 2. if -else condition 
 
if age > 18
    p"You can ride a bike"
else
    p "You are minor, cannot ride a bike"
end

# 3. if - elsif condition 

num = 860
if num >0 && num <= 50
    puts "num is between 0 to 50"
    elsif num > 50 && num < 100
        puts "num is between 51 to 100"
    elsif num > 101 && num < 150
        puts "num is between 101 to 150"
    else
        puts "num is above 150"
end


# 4. case ladder 
char = "a"
case char
when "A"
    puts "this is A"
when "B"
    puts "this is B"
when "C"
    puts "this is C"
when "D"
    puts "this is D"
else
    puts "This is above D"
end

# 5. Ternary operator 

is_active = true
puts is_active ? "the state is active" : "the state is inactive"