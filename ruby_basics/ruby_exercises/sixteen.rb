# Iterating over data in contact_data populating contacts
require 'pry'
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# def cont_info(data)
#   data.select { |}

# cont_email = contact_data.select do |x|
#   return x[0]
# end

contacts["John Smith"] = contact_data[0]
contacts["Sally Johnson"] = contact_data[1]
p contacts