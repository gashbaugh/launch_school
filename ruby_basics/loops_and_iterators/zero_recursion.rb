def timer(answer)
  if answer <= 0 
    puts answer
  else
    puts answer
    timer(answer - 1)
  end
end

puts "how long would you like to set your timer for?"
answer = gets.chomp.to_i
timer(answer)
