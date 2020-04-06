# def intersection(list1, list2)
#   intersection = []

#   list1.each do |num|
#     if list2.include?(num)
#       intersection.push(num)
#     end
#   end

#   return intersection
# end

def intersection(list1, list2)
  intersection = []
  hash = {}

  list1.each do |num|
    hash[num] = num
  end
  list2.each do |num|
    if hash[num]
      intersection << num
    end
  end
  return intersection
end