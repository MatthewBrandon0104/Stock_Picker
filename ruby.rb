def picker(array)
    selection = [0,0]
    value = 0
    
    array.each do |item|
        i = array.index(item)
        while i < array.length
            if array[i] <= item
                i += 1
                next
            end
            if array[i] - item > value
                selection[0] = item
                selection[1] = array[i]
                value = array[i] - item
            end
            i += 1
        end
    end
    puts [array.index(selection[0]), array.index(selection[1])]
    puts "buy value #{selection[0]} : sell value #{selection[1]} : profit #{value}"
end

picker([17,3,6,9,15,8,6,1,10])