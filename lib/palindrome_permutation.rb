
def palindrome_permutation?(string)
  char_array = string.split('')

  count_array = []

  char_array.each do |char|
    count_array.push(char_array.count(char))
  end

  neg_count = 0

  count_array.each do |count|
    if count % 2 != 0
      neg_count += 1
    end
  end

  if neg_count >1
    return false
  end

  return true
end