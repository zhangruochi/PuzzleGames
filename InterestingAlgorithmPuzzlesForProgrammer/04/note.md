## 问题

将 n 厘米的木棒切分成 1 厘米的小段。n 为木棒的长度，m 为每次最多 m 个人切。请问多少次可以切分完成。

## 思路


```ruby
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
```



