x = "hi there"
my_hash1 = {x: "some value"}
my_hash2 = {x => "some value"}
p my_hash1
p my_hash2
=begin
my_hash1 created x: as a symbol, whereas 
my_hash2 simply called x, a defined variable.
This means that my_hash1, will not be able to 
access x outside of the parameters of the hash
and my_hash2 will access the value of variable 
x located outside of the hash. Output of line 
4 is ":x=>"some value" and output of line 
5 is "hi there=>some value" 
=end
