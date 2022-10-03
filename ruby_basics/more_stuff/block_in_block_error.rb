def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

=begin
The ampersand is needed in defining the method so ruby
knows that it is defined as a block call
=end