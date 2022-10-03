def get_quote(person)
  if person == "Yoda"
    puts "Do. Or do not. There is not try."
  end

  if person == "Confucius"
    puts "I hear and I forget. I see and I remember. I do and I understand."
  end

  if person == "Einstein"
    puts "Do not worry about your difficulties in Mathematics. I can assure you mine are still greater."
  end
end

puts "Confucius says: "
puts "#{get_quote("Confucius")}"

puts "Yoda says: "
puts "#{get_quote("Yoda")}"

puts "Einstein says: "
puts "#{get_quote("Einstein")}"
