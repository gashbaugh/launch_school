User_name = "FunkyFresh"
Password = "password"

loop do
  puts "Username: "
  usr = gets.chomp
  puts "Password: "
  pass = gets.chomp

  if pass == Password && usr == User_name
    puts "Welcome!!!"
    break
  else 
    puts "Wrong Username or Password. Try again"
  end
end
