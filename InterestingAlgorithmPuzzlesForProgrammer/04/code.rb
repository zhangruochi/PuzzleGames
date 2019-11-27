def recursive(n,m, cur_count)
    if cur_count > n
        0
    elsif cur_count < m
        1 + recursive(n, m, cur_count * 2)
    else 
        1 + recursive(n, m, cur_count + m)
    end
end


p recursive(20,3,1)
p recursive(100,5,1)

        