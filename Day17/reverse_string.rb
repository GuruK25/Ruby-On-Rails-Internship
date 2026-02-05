puts "Enter a string to reverse: "
string = gets.chomp

def reverse_string_by_inbuilt string
    reversed = string.reverse 
    puts "Reversing a string using inbuilt method : " + reversed
end

reverse_string_by_inbuilt string

def reverse_string string
    reverse = ""
    for ch in string.chars
        reverse = ch+reverse
    end
    puts "Reversing a string without inbuilt method: " + reverse
end
reverse_string string