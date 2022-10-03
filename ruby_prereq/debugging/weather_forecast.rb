# def predict_weather
#   sunshine = ["true", "false"].sample

#   if sunshine 
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end

#this code will always evaluate to true becaue true and false have been defined as strings

def predict_weather
  sunshine = [true, false].sample

  if sunshine 
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

p predict_weather