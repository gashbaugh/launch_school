# 1. What would you expect the following code to print?

  numbers = [1, 2, 2, 3]
  numbers.uniq

  puts numbers # => prints each element of Array
  # `numbers` to screen as `uniq` is not mutative or
  # destructive

# 2. Describe the difference between ! and ? in Ruby and 
  # explain what would happen in the following scenarios:

=begin
  P1. What is `!=` and where should you use it?
    `!=` is the boolean value of "does not equal." It should
    be used to compare the value to the left to the value on
    the right. If equal, returns `true`. If not equal, or
    given a "falsey" value on the right, returns `false`.

  P2. Put `!` before something, like `!user_name`
    Nothing would happen as far as Ruby syntax and execution
    are concerned. This would simply be a naming for a
    variable. If seeing this variable in a program, I may
    proceed keeping in mind that this may indicate some
    destructive or mutative nature to this variable.

  P3. Puts `!` after something, like `words.uniq!`
    This changes the operation of the `uniq` method to a
    destructive one. Using `!` at the end of a method does
    not universally have the same effect though. As L.S.
    would put it, "Refer to the Ruby docs for information
    on methods and their return values".

  P4. Put ? before something
    Refer to answer 2.

    *Added after reviewing solutions in assignment.
    `?` is also the ternary operator in Ruby for an
    `if...else` statement. This is great shorthand and
    honestly a great method of refractoring I can see
    myself implementing for better code.

  P5. Put ? after something.
    Most times this will indicate that the method preceding
    has a check process to it. Meaning that it will compare
    to passed argument to the previoud object. Such as with
    the `include?` method.
=end
  arr = [1, 2, 3]
  arr.include?(2) # => returns true

=begin
  P6. Puts `!!` before something, like `!!user_name`
    *Added after reviewing solutions in assignment.
    `!!` will return the boolean value of the object.
    Single `!` will return the opposite boolean value
    of the object. Both of these also operate with  "truthy"
    or "falsey" values as well.
=end

# 3. Replace the word "important" with "urgent" in this string

  advice = "Few things in life are as important as house training your pet dinosaur."
  advice.gsub!("Important", "urgent")

# 4. The Ruby Array class has several methods for
  # removing items from the array. Two of them have
  # very similar names. Let's see how they differ:

  numbers = [1, 2, 3, 4, 5]

  # What do the following method calls do (assume we reset
  # `numbers` to the original array bewteen method calls)?

  numbers.delete_at(1) # => returns `2' and numbers = [1, 3, 4, 5]
  numbers.delete(1) #=> returns `1` and numbers = [2, 3, 4, 5]

# 5. Programmically determine if 42 lies between 10 and 100.

  (10..100). cover?(42) # => returns true if 42 is between 10 and 100

# 6. Starting wiht the string: 

  famous_words = "seven years ago..."

  # show two different ways to put the expected "Four score and " in front of it

  lead_in = "Four score and "
  lead_in + famous_words
  famous_words.prepend(lead_in)
  lead_in << famous_words

# 7. If we build an array like this:

  flintstones = ["Fred", "Wilma"]
  flintstones << ["Barney", "Betty"]
  flintstones << ["BamBam", "Pebbles"]

  # We end up with this nested array:

  ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

  # Make this into an un-nested array

  flintstones.flatten #=> returns an un-nested array
  # appending `!` to the method will mutate `flintstones`

# 8. Given the hash below

  flintstones_hash = {
    "Fred" => 0,
    "Wilma" => 1,
    "Barney" => 2,
    "Betty" => 3,
    "BamBam" => 4,
    "Pebbles" => 5
  }

  # Turn this into an array containing only two elements:
  # Barney's name and Barney's number

  flintstones_hash.assoc("Barney") #=> returns new array `["Barney", 2]



