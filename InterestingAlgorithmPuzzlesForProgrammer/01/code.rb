def is_palindrome(number,sys)
    number.to_s(sys) == number.to_s(sys).reverse
end


def solution
    number = 11
    while true
        if is_palindrome(number,10) && is_palindrome(number,8) &&  is_palindrome(number,2)
            break
        else
            number += 2
        end
    end
    number
end

p solution
