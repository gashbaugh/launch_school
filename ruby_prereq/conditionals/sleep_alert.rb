status = ["awake", "tired"].sample

alerts = if status == "awake"
           puts "Be productive!"
         else 
           puts "Go to sleep!"
         end

puts alert