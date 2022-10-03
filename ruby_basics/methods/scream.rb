def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
=begin prints nothing to the console 
because of the explicit return statement line 3
=end
 
# edited to print to screen

def (words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

=begin with implied return instead of explicit 
return on line 3, program will run through the 
entire scream method, printing "Yippeee!!!!" to 
the console. However, since puts method was used, 
the return will still be nil
=end
