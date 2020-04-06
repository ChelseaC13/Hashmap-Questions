
# def palindrome_permutation?(string)
#   char_array = string.split('')

#   count_array = []

#   char_array.each do |char|
#     count_array.push(char_array.count(char))
#   end

#   neg_count = 0

#   count_array.each do |count|
#     if count % 2 != 0
#       neg_count += 1
#     end
#   end

#   if neg_count >1
#     return false
#   end

#   return true
# end


def palindrome_permutation?(string)
  char_array = string.split('')
  hash = {}
  
  char_array.each do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  values = hash.values
  amount_of_single_letters = 0

  values.each do |num|
    if num % 2 == 1
      amount_of_single_letters += 1
    end
  end

  if amount_of_single_letters <= 1
    return true
  else 
    return false
  end
  
end