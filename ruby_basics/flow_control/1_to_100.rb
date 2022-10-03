puts "Please give a number from 1 to 100!"
number = gets.chomp.to_i

if number < 0 
  puts "You put in a negative number!"
elsif number <= 50 
  puts "Your number is between 0 and 50!"
elsif number <= 100
  puts "Your number is between 51 and 100!"
else 
  puts "You didn't listen!!!"
end

