N = 100

def solution
    
    all_cards = [false] * N

    (2..100).each do |i|
        j = i - 1 
        while j < all_cards.size
            all_cards[j] = (not all_cards[j])
            j += i
        end
    end

    N.times {|i| p i+1 if !all_cards[i]}
end

solution



