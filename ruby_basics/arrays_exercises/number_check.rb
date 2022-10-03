arr = [1, 2, 5, 7, 9, 11]
number = 3 

arr.each do |num| 
  if num == number
    puts "#{number} is included in the array."
  else
    puts "#{number} is not included in the array."
  end
end
