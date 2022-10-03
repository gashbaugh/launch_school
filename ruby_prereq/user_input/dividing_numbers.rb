def valid_number?(number_string)
  number_string.to_s.to_i == number_string
end

def divide(num, den)
  solution = num / den.to_f
  puts "#{num} divided by #{den} is #{solution}!"
end

loop do
  puts "Please enter an integer for dividend: "
  divid = gets.chomp.to_i

  puts "Please enter a non-zero integer for divisor (not zero): "
  divis = gets.chomp.to_i

  if valid_number?(divid) == false || valid_number?(divis) == false
    puts "One of the entries was not a valid integer, please try again: "
    next
  elsif 
    divis == 0
    puts "The divisor cannot be zero!. Please try again: "
    next
  else
    divide(divid, divis)
  end

  break

end
