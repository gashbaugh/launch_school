# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

puts "Welcome to Calculator!"

puts "What's the first number?"
number1 = gets.chomp.to_i

puts "What's the second number?"
number2 = gets.chomp.to_i

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp.to_i

operation = nil
result = nil

loop do
  if operator == 1
    operation = "plus" 
    result = number1 + number2
    puts "#{number1} #{operation} #{number2} equals #{result}!"
    break
  elsif operator == 2
    operation = "minus"
    result = number1 - number2
    puts "#{number1} #{operation} #{number2} equals #{result}!"
    break
  elsif operator == 3
    operation = "times"
    result = number1 * number2
    puts "#{number1} #{operation} #{number2} equals #{result}!"
    break
  elsif operator == 4
    operation = "divided by"
    result = number1.to_f / number2.to_f
    puts "#{number1} #{operation} #{number2} equals #{result}!"
    break
  else
    puts "That was not a valid operation! Please try again!"
    break
  end
end