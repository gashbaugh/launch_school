puts "What is your first name? "
f_name = gets.chomp.to_s

puts "What is your last name?"
l_name = gets.chomp.to_s

10.times { puts "Hello #{f_name} #{l_name}! " }
