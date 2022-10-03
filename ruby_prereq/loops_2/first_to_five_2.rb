number_a = 0
number_b = 0

loop do 
  number_a += rand(2)
  number_b += rand(2)

  next if number_a < 5 && number_b < 5

    if number_a == 5 && number_b == 5
      puts "It's a tie! Number A and Number B hit the score limit!"
    elsif number_b == 5
      puts "Number B wins! The score limit was reached!"
    elsif number_a == 5 
      puts "Number A wins! The score limit was reached!"
    end

  break
end

p number_a
p number_b