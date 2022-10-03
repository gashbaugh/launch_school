Password = "password"

loop do
  puts "Please enter your password: "
  pass = gets.chomp

  if pass == Password
    puts "Welcome!!!"
    break
  else 
    puts "Wrong password. Try again"
  end
end
