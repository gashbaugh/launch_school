# 1. I this hash of people and their age, 

ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 402,
  "Eddie" => 10
}

# see if "Spot" is present.

ages.include?("Spot") #=> returns false

# Bonus: What are two other hash methods that would work just as well for this solution?

ages.any?("Spot")
ages.has_key?("Spot")
ages.key?("Spot")
ages.member?("Spot")

