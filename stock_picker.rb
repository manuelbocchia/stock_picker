def stock_picker(array)
    new_hash = {}
    array.each_with_index { |stock,index|
        new_hash[index] = stock
    }
    math_hash = {}
    new_hash.map { |index, stock|
        if index < (new_hash.length)
            for num in new_hash
                if num[0] > index
                math_hash[[index,num[0]]] = num[1] - stock
                end
            end
        end
    }    
    result_hash = math_hash.max_by {|key,val| val}
    result_hash[0]
end
#Testing 1
p stock_picker([17,3,6,9,15,8,6,1,10])
#Testing 2
p stock_picker([1,4,5,7,12,23,1,24,25])