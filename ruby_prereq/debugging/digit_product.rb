def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each { |digit| product *= digit }

  product
end

p digit_product("12345")

=begin
product on line 3 was originally assigned the value of zero. 
this created a loop of the product starting as zero at every
iteration of the loop. and any number multilplied by zero, 
equals zero. changing the value to 1, started the loops first
iteration properly, returning the first value of the array 
digits. 
=end
