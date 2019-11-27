## 问题

组合算式指在原数的数字之间插入操作符，以求得计算结果。
求位于 1000 - 9999 之间组合算式的计算结果为原数的逆序数。


## 思路

此题简单写法是使用eval，实际上计算算式需要构建计算器。讲 expre 的中缀表达式转化成后缀表达式，然后再计算表达式的值。


```ruby
class Solution


    def initialize()
        @opr = ["*","-","/","+",""]
    end


    def helper(raw,num)
        nums = []
        num.to_s.each_char {|i| nums << i}

        @opr.each do |i|
            @opr.each do |j|
                @opr.each do |k|
                    next if i == "/" and nums[1] == "0"
                    next if j == "/" and nums[2] == "0"
                    next if k == "/" and nums[3] == "0"
                    
                    next if i == "" and nums[0] == "0"
                    next if j == "" and nums[1] == "0"
                    next if k == "" and nums[2] == "0"
                    next if i == "" and j == "" and k == ""
                    expre = nums[0] + i + nums[1] + j + nums[2] + k + nums[3]
                    p raw if eval(expre).to_s.reverse == raw.to_s
                end
            end
        end
    end


    def solution
        (5931..9999).each do |num|
            self.helper(num,num)
        end
    end
end

Solution.new.solution()

```



