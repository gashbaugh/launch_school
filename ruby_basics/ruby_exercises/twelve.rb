# Accessing Joe's email and Sally's phone number

contacts = {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :Phone=>"555-123-4567"}, 
"Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :Phone=>"123-234-3454"}}

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:Phone]

=begin
referencing the key in the primary hash, then the key 
in the secondary has correlating with the desired value
=end
