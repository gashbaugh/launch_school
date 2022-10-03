def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

line = [1, 2, 3, 4.56, 4, 3, 2, 1]
p find_greatest(line)
p line

=begin
- a method that returns the sum of two integers

    - obtain an integer from user to be the first integer   
    - obtain an integer from user to be the second integer
    - save integers to unique variables in program
    - create a method that takes two arguments, and returns sum
    - only one iteration needed for simple addition program
    - order does not matter with addition as in this case


- a method that takes an array of strings, and returns a string that is all
  those strings concatenated together

    - define or obtain the array of strings to be used
    - create a method that will iterate through the array of strings
    - create an incrementation on elements to adapt to different array sizes
    - return the value of the different elements of the array concatenated

- a method that takes an array of integers, and returns a new array with
  every other element from the original array, starting with the first element

    - define or obtain array to be used
    - create a method that will pick every other element of said array
    - create a new array defined by every other element of original array
    - return the new array

      - START
      - SET
      - GET
      - PRINT
      - READ
      - IF/ELSE IF/ ELSE
      - WHILE
      - END

- a method that determines the index of the 3rd occurance of a given character
  in a string. For instance, if the given character is 'x' and the string is 
  'axbxcxdxex', the method should return 6 (the index of the 3rd 'x'). If the
  given character does not occur at least 3 times, return nil.

    - define or obtain string to be used
    - define character to be searched for
    - iterate through string searching for occurance of determined character
    - dertermine whether or not the character occurs 3 times or more
    - create parameter to retun nil if character does not occur 3 or more times
    - if character does occur 3 or more times, find index value of 3rd occurance
    - return index of 3rd occurance 

- a method that takes two arrays of numbers and returns the result of merging
  the arrays. The elements of the first array should become the elements at the
  given indexes of the returned array, while the elements of the second array
  should become the elements at the odd indexes.

    - define or obtain the two arrays to be used
    - both arrays are assumed to be the same length
    - create a mutating method to take elements from each array alternating
    - alternating between the two original arrays, push the values to a new 
      array. 
    - return the new array
=end
