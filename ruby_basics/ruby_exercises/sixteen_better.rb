contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]
# different data fields of contact_data
contacts.each_with_index do |(name, hash), index|
  fields.each do |field|
    hash[field] = contact_data[index].shift
  end
end
=begin
Using each_with_index to go over contacts index. Identifying 
name, as the key in contacts hash, and hash, as the empty 
hash of the value portion of the contacts hash. 
=end
