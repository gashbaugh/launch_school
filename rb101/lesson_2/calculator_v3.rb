=begin
Further tweaks for the future
- prompt at beginning of program asking for prefered 
  language
- figure out how to use heredoc with multiple languages
  with yaml file
- eventually change the integer, float, and number
  methods to more reliable ones
- streamline the case operator loop as well to accept
  and work with multiple languages in the yml file
=end

require "yaml"
MESSAGES = YAML.load_file("calculator_messages.yml")

LANGUAGE = "en"

def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
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

# Want to create a variable to set language upon program init

prompt(MESSAGES["en"]["welcome"])

loop do # name entry confirmation loop
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES["en"]["valid_name"])
  else
    break
  end
end

=begin
Have not been able to figure out how to use string 
interpolate of `name` to the next line of code accessing 
the config file
=end

prompt(MESSAGES["en"]["name_greeting"]) 

# main loop
loop do
  loop do # number1 validity loop
    prompt MESSAGES["en"]["gather_num_1"]
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt MESSAGES["en"]["invalid_num_entry"]
    end
  end

  loop do # number2 validity loop
    prompt MESSAGES["en"]["gather_num_2"]
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt MESSAGES["en"]["invalid_num_entry"]
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
      prompt MESSAGES["en"]["operator_error"]
    end
  end

=begin
Again have not been able to obtain string interpolation
with the yml config
=end

  prompt "#{operation_to_progress_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

=begin
Again have not been able to obtain string interpolation
with the yml config
=end

  prompt "#{number1} #{operation_to_result_message(operator)} #{number2} is #{result}!"

  prompt MESSAGES["en"]["another_op?"]
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt MESSAGES["en"]["exit_message"]
