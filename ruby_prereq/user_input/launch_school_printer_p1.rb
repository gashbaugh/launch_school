loop do 
  puts "How many lines would you like to print?: "
  count = gets.chomp

  break if count.downcase == "q"

  if count.to_i < 3
    puts "That is not enough lines. "
    next
  end

end
