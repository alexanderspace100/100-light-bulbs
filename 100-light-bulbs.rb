def bulbs_change (bulb_num)
    if bulb_num == true
        bulb_num = false
    else
        bulb_num =  true
    end
end

def iterate_to_bulbs (array,round)
    i = round - 1
    while i < array.length
        array[i] = bulbs_change(array[i])

        i = i + round
    end
    return array
end


bulbs = Array.new(100,false)

round_counter = 1

while round_counter <= 100
    iterate_to_bulbs(bulbs,round_counter)
    round_counter += 1
end


def counting_bulbs_switched_on(bulbs)
    array = []
    for bulb in bulbs
        if bulb == true
            array << bulb
        end
    end
    array.count
end

p counting_bulbs_switched_on(bulbs)


############################# Another version: ###############################

# def print_round(bulbs)
#   bulbs.each_with_index { |status, i| puts "Bulb #{i+1}: ON" if status == 1 }
# end

# def round(bulbs, rounds)
#   rounds.times do |n|
#     (n..rounds).step(n+1) { |i| bulbs[i] ^= 1 }
#   end
# end

# MAX_BULBS = 100
# MAX_ROUNDS = 100

# bulbs = [0]*MAX_BULBS
# round(bulbs, MAX_ROUNDS)
# print_round(bulbs)