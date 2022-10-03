def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_progress_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Muliplying'
  when '4'
    'Dividing'
  end
end

def operation_to_result_message(op)
  case op
  when '1'
    'plus'
  when '2'
    'divided by'
  when '3'
    'times'
  when '4'
    'divided by'
  end
end

name = nil
number1 = nil
number2 = nil
operator = nil
result = nil

prompt 'Welcome to Calculator! Enter your name: '

loop do # name entry confirmation loop
  name = gets.chomp

  if name.empty?
    prompt 'Make sure you use a valid name'
  else
    break
  end
end

prompt "Hello #{name}"

# main loop
loop do
  loop do # number1 validity loop
    prompt 'What is the first number?'
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt "Hmmm... that doesn't look like a valid number."
    end
  end

  loop do # number2 validity loop
    prompt 'What is the second number?'
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt "Hmmm... that doesn't look like a valid number."
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) Add
  2) Subract
  3) Multiply
  4) Divide
  MSG

  loop do # operator valid input confirmation loop
    prompt operator_prompt
    operator = gets.chomp

    if %w[1 2 3 4].include?(operator)
      break
    else
      prompt 'Must choose 1, 2, 3, or 4'
    end
  end

  prompt "#{operation_to_progress_message(operator)} the two numnbers..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2
           end

  prompt "#{number1} #{operation_to_result_message(operator)} #{number2} is #{result}!"

  prompt 'Would you like to perform another calculation? (Y to calculate again)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thank you for using the calculator!'
