def lab_exist(string)
  if string =~ /lab/
    puts "#{string} contains the sequence 'lab'"
  else 
    puts "#{string} does not contain the sequence 'lab'"
  end
end

lab_exist("laboratory")
lab_exist("experiment")
lab_exist("Pans Labrynth")
lab_exist("elaborate")
lab_exist("polar bear")
