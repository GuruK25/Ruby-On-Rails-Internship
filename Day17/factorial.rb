puts "Enter a number to find its factorial: "
num = gets.chomp.to_i

def factorial org_num
    fact = 1
    num = org_num
    until num == 1
        fact = fact * num
        num = num-1
    end

    puts "The factorial of  #{org_num} is #{fact}"
end

factorial num

