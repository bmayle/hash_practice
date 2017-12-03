meals_hash = {}

meals_hash[:appetizer] = ["wings", "fries", "salsa"]
meals_hash[:entre] = ["cheeseburger", "chicken salad", "spaghetti"]
meals_hash[:desert] = ["ice cream", "pumpkin pie", "snickers"]

puts meals_hash.length
puts meals_hash[:appetizer].length

meals_hash.each do |meal_part , options|
puts "You ordered #{options.sample}."
end