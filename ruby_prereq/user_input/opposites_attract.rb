input = Array.new
answer = nil
iterate = 2

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do 

  loop do
    puts "Please provide one positive, and one negative integer: "
    answer = gets.chomp
    
      unless valid_number?(answer) == true
        puts "That was not a valid integer. Please try again..."
        next
      end

    input.push(answer.to_i)
    
    iterate -= 1
    break if iterate == 0
  end

  unless (input[0].positive? && input[1].negative?) || (input[1].positive? && input[0].negative?)
    input.clear
    iterate = 2
    puts "You didn't enter both positive and negative integers. Please try again..."
    next
  end

  if (input[0].positive? || input[0].negative?) && (input[1].positive? || input[1].negative?)
    puts "The sum of #{input[0]} and #{input[1]} is #{input.sum}"
    break
  end

end
