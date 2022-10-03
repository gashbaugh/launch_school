loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i

  if answer == 4
    puts "That is correct!"
  else 
    puts "That is incorrect!"
  end
  break if answer == 4
end
