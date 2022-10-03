(32 * 4) >= 129 
# false (128 is not greater or equal 

false != !true
# false, reads: false does not equal false

true == 4
=begin 
evaluates to false. If operator was `=` it would
be assigning the value of true, instead of current 
syntax evaluating for comparative value.
=end

false == 4
# false (value is neither nil nor false)

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82))
=begin
evaluates to true 
first value false as opposite of true is false
second value false as "not 20" does not equal 20
third value true as 328 / 4 == 82
=end
