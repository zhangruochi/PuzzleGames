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
