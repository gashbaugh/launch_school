answer = nil

loop do 
  puts "Would you like me to print something?"
  answer = gets.chomp.downcase

  if answer == "n"
    break 

  elsif answer == "y"
    puts "Here's something for ya"
    break

  else 
    puts "That was not a valid response. Please try again: "
    next
  end
end
