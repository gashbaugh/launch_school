number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  puts "Seabiscuit #{number_a}, Manhattan #{number_b}."

  if number_b > number_a
    puts "Manhattan is in the lead!"
  elsif number_a > number_b
    puts "Seabiscuit is in the lead!"
  elsif number_a == number_b
    puts "It's tied up!"
  else
    break
  end

  unless number_a == 5 || number_b == 5
    next
  end

  if number_a == 5 
    puts "Seabiscuit wins!"
  elsif number_b == 5
    puts "Manhattan wins!"
  else 
    puts "It's a tie!"
  end

    break
end