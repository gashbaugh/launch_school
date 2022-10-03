loop do 
  puts "How many lines would you like to print?: "
  count = gets.chomp

  break if count.downcase == "q"

  if count.to_i < 3
    puts "That is not enough lines. "
    next
  end

  count_i = count.to_i

  while count_i > 0 
    puts "Launch School is the Best!!!"
    count_i -= 1
  end
  
end
