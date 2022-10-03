arr = ["one", "of", "these", "things", "is", "not", "like", "the", "other"]

arr.each_with_index { |element, index| puts "Index #{index}, is #{element}" }
