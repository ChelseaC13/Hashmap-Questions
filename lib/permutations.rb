
def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end

  string1.split('').each do |num|
    if string2.split('').include?(num)
      nil
    else 
      return false
    end
  end

  return true
end