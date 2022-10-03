numbers = [1, 2, 3, 5, 6, 7, 8 ,9, 10]

odd_numbers = numbers.each do |x| 
  if x.odd? 
    puts x 
  end
end
# Prints values of numbers arrray that evaluate to odd
