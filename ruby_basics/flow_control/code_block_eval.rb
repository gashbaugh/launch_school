# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
=begin
FALSE will be printed to screen as comparison 
is between a string and an integer
=end

# Snippet 2 
x = 2 
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else 
  puts "Did you?"
end
=begin
"Did oyu get it right?" will be printed as line 
10 evaluates to true as inputing x into the 
equation comes to 3 == 3 
=end

# Snippet 3 
y = 9 
x = 10
if (x + 1) <= (y)
  puts "Alright." 
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x 
  puts "ALRIGHT NOW!"
else 
  puts "Alrighty"
end
=begin
outputs "Alright now!" The first condition is not
met as 11 <= 9 is not true. The second condition
evaluates to true as 11 >= 9. It would output 
"ALRIGHT NOW!", but stops running the program at 
line 26. 
=end