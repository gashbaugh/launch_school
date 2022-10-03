def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

=begin 
The method returns a proc oject, but no errors. Nothing
will be printed to the console since the .call was never 
used
=end
