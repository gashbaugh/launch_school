saved_number = nil 

def find_greatest(number)
  saved_number = number[0]

  number.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

assray = [1, 2, 3, 4, 3, 2, 1]
penisray = [5, 6, 2, 5, 3, 6, 35, 2]
p find_greatest(assray)
p find_greatest(penisray)
