coins = [10,50,100,500]
cnt = 0
(2..15).each { |i| coins.repeated_combination(i).each {|coin_set| cnt += 1  if  coin_set.reduce(:+) == 1000 }}
p cnt