puts "Enter a string to check it is palindrome or not: "
string = gets.chomp

def is_palindrome string
    reversed = string.reverse

    if reversed == string
        puts "The string " + string + " is palindrome"
    else
        puts "The string " + string + " is not palindrom"
    end
end

is_palindrome string
