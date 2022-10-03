loop do
  puts "What is your name?"
  user = gets.chomp
  
  puts "Your name is #{user}, correct? (y, n)"
  answer = gets.chomp.downcase
  
  next if answer == "n"

  if answer =="y"
    puts "Nice to meet you #{user}!!"
  end

  break

end
