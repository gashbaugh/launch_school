arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |x| x.start_with?('s')}

=begin
calling delete_if method on arr, specifying x as each
element of arr, calling start_with? on x checking for 
string element ('s')
=end

p arr
