# practice getting & limiting input then printing it
# years = []
# while years.length < 5 do
#   input = gets.chomp
#   years.push(input)
# end
# print years


# practice incrementing a number
# a = 5
# 3.times do
#   a += 1
# end
# puts a

# practice incrementing in a times do loop
# current_year = Time.now.year
# birth_year = 1980
# age = current_year - birth_year
# puts "you are currently #{age}."
# x = 10
# 4.times do
#   puts "in #{x} years, you'll be #{age + x}."
#   x += 10
# end

# practicing for arrays
# people = ["abby", "bob", "carla", "debbie", "edgar", "frank"]

# people.each_with_index do |person, index|
#   puts "#{index}. #{person}"
# end

# array = []
# array.push(people.pop)
# puts array
# people = people.rotate(1)
# people.each_with_index do |person, index|
#   puts "#{index}. #{person}"
# end

# people.delete("debbie")
# people.each_with_index do |person, index|
#   puts "#{index}. #{person}"
# end


# b = [1, 1, 2, 2, 3, 3, 4, 4]
# puts b.uniq


# Assign a random food to a person. No 2 people can have the same food. 

# humans = ["abby", "bob", "carla", "debbie", "edgar", "frank"]
# foods = ["apple", "blacknwhitecookie", "caramel", "dopplebock", "egg", "fudge"]

# foods.shuffle!
# pairs = humans.zip(foods)

# pairs.each do |h, f|
#   puts "#{h.capitalize} has a #{f.capitalize}"
# end







