def intersection(list1, list2)
  intersection = []

  list1.each do |num|
    if list2.include?(num)
      intersection.push(num)
    end
  end

  return intersection
end