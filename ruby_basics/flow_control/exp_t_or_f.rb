(32 * 4) >= "129"
# error. String vs. integer comparison
847 == '874'
# false. String vs. integer equity comparison
'847' < '846'
# false. 7 is not less than 6 
'847' > '846'
# true. 7 is greater than 6
'847' > '8478'
=begin 
false. 8478 has more characters and as 
a string will evaluate to greater than
=end
'847' < '8478'
=begin
true. 847 has less characters than 8478, 
and as a string will evaluate to less than
=end
