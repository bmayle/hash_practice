# creating a map of state abbreviation
states ={
	'Oregon' => 'OR',
	'Flordia' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI',
}

# creating a basic set of states and some cities in them
cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

# adding some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts out some cities
puts '-' *10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Flordia's abbreviation is: #{states['Flordia']}"

# doing by using the sate then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Flordia has: #{cities[states['Flordia']]}"

# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
	puts "#{state} is abbreviation #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
	puts "#{abbrev} has the city #{city}"
end

# now doing both at the same time
puts '-' * 10
states.each do |state, abbrev|
	city = cities[abbrev]
	puts "#{states} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil when something isn't in there
state = states['Texas']

if !state
	puts "Sorry, no Texas."
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"