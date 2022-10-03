def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

#must pass the array as a single object. not multiple

find_first_nonzero_among([0, 0, 1, 0, 2, 0])
find_first_nonzero_among([1])