def recursive(raw,num)
    if raw == num
        return true
    end

    if num == 1
        return false
    end

    return num % 2 == 0 ? recursive(raw, num / 2) : recursive(raw,num * 3 + 1) 

end


# num = 2
# p recursive(num,num*3+1)

#  it counts the number of elements yielding a true value.
p 2.step(10000,2).count { |i|  recursive(i,i*3+1) }