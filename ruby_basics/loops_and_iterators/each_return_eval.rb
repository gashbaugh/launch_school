x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

=begin 
At first glance I thought that this program 
would return each element of the array +1 value,
but now knowing that the .each method does not 
mutate values that it is run on, the original 
array will be returned.
=end
