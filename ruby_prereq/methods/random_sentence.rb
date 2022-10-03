names = ["Dave", "Sally", "George", "Jessica"]
activities = ["walking", "running", "cycling"]

def sentence(name, activity)
  puts "#{name.sample} went #{activity.sample} today!"
end

sentence(names, activities)
