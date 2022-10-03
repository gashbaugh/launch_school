puts "How old are you?? "
years = gets.chomp.to_i

def age_in_months(age)
  age * 12 
end

puts "Youy are #{age_in_months(years)} months old!!!"

