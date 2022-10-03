hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

=begin
program will output "These hashes are the same!" Even 
though they look different, the hashes have the same 
keys, with the same values. They are simply reordered,
and the second one uses the more recent syntax of a 
symbol hash for the third key, instead of rocket syntax
=end