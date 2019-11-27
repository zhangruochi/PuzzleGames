N = 12 

def move(log)
    return 1 if log.size == N + 1

    cnt = 0
    [[0,1],[0,-1],[1,0],[-1,0]].each do |d|
        next_pos = [log[-1][0] + d[0],log[-1][1] + d[1]]
        if !log.include?(next_pos)
            cnt += move(log + [next_pos])
        end
    end
    cnt
end


p move([[0,0]])

# 324932
