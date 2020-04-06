
# def permutations?(string1, string2)
#   if string1.length != string2.length
#     return false
#   end

#   string1.split('').each do |num|
#     if string2.split('').include?(num)
#       nil
#     else 
#       return false
#     end
#   end

#   return true
# end


def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end

  hash = {}

  string1.split('').each do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  string2.split('').each do |char|
    if hash[char]
      hash[char] -= 1
    else
      return false
    end
  end

  values = hash.values

  if values.sum == 0
    return true
  else
    return false
  end

end