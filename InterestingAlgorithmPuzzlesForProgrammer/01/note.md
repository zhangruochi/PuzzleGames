## 问题
> 求十进制、二进制、八进制表示都是回文数的所有数字中，大于十进制数 10 的最小数。


## 思路
- 回文字符串与自己本身的逆转相等
- 因为二进制是回文数，所有最高位和最低位只能是1，那么这个数一定是奇数。

```ruby
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
```



