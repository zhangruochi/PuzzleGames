class Solution:
    opr = {"+":0,"-":0,"*":1,"/":1,"(": -1,")": -1}
    
    def to_postfix(self,s):
        
        stack = []
        res = []
        i = 0
        while i < len(s):
            if s[i] == " ":
                i+=1
            elif s[i] not in self.opr:
                num = ""
                while i < len(s) and s[i] not in self.opr:
                    num += s[i]
                    i+=1
                res.append(int(num))
                num =""
            else:
                if s[i] == "(":
                    stack.append(s[i])
                elif s[i] == ")":
                    while stack[-1] != "(":
                        op = stack.pop()
                        res += op
                    stack.pop()
                elif (not stack) or self.opr[stack[-1]] < self.opr[s[i]]: ## 栈顶操作符优先级低，直接入栈
                    stack.append(s[i])
                else:
                    ## 栈顶操作符优先级大于等于当前操作符，一直弹出，直到栈顶元素的优先级小于当前元素为止
                    while stack and self.opr[stack[-1]] >= self.opr[s[i]]:
                        op = stack.pop()
                        res += op
                    stack.append(s[i])
                i += 1

        while stack:
            res += stack.pop()

        return res
    
    def calculate_postfix(self,s):

        print(s)

        add = lambda x,y: x+y
        sub = lambda x,y: x-y
        mul = lambda x,y: x*y
        div = lambda x,y: x//y

        self.opr_func = {"+":add,"-":sub,"*":mul,"/":div}
        

        stack = []
        for char in s:
            if char not in self.opr:
                stack.append(int(char))
            else:
                second = stack.pop()
                first = stack.pop()
                stack.append(self.opr_func[char](first,second))

        return stack[-1]
    
    
    def calculate(self, s: str) -> int:
        if not s: return 0
        
        return self.calculate_postfix(self.to_postfix(s))
        
        
s = Solution()
print(s.calculate("1- 11*2+(4+5)*1"))
        
        
        

