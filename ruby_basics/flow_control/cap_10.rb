def cap_10(phrase)
  if phrase.length > 10 
    puts phrase.upcase!
  else 
    puts phrase
  end
end

puts cap_10("this one in")
puts cap_10("nine words")