def picker(array)
    selection = [0,0]
    value = 0
    
    array.each do |item|
        i = 0
        while i < array.length
            if array[i] <= item
                i += 1
                puts "#{item} #{array[i]}" 
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
    
    puts "low day #{selection[0]} : high day #{selection[1]} : value #{value}"
end

picker([17,3,6,9,15,8,6,1,10])