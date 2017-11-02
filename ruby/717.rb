# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
    while(bits.size > 2)
        bits.delete_at(0) if bits[0] == 0
        break if bits.size <= 2
        if bits[0]==1
            bits.delete_at(0)
            bits.delete_at(0)
        end
    end
    p bits
    if bits.size == 1 || bits[0]==0
        return true
    else 
        return false
    end
end

# is_one_bit_character([0,1,0])