hash1 = { "a" => 300, "b" => 200 }
h2 = { "b" => 199, "c" => 100 }
h1.merge(h2)
h1
h2
=begin
The #merge method combines the two hashes, non-
destructively. And from tests, if there is a 
duplicate key, it will return the value of the 
hash presented as the argument, as the new value
with the associated key.
=end

h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 199, "c" => 300 }
h1.merge!(h2)
h1
h2
=begin
The #merge! method is the exact same, save for 
the fact that it mutates the original value of 
the h1 hash in this example. Just like one would
expect with the ! tacked on to a method. 
=end
