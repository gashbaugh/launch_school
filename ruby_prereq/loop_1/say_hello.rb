say_hello = true
times = 0

while say_hello
  puts "Hello"
  times += 1
  break if times > 4
end

