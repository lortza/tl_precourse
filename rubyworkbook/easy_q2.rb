# http://www.gotealeaf.com/books/ruby_workbook/read/easy_quiz_2

#1 In this hash of people and their age, see if there is an age present for "Spot".
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# ages.include?("Spot")

#2 Add up all of the ages from our current Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# x = 0
# ages.each do |k, v|
#   x = x + v
# end#each
# puts "The sum of ages is: #{x}"
# #or
# sum = ages.values.inject(:+)
# puts sum

#3 In the age hash, throw out the really old people (age 100 or older).
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.keep_if do |n, a|
#   a < 100
# end
# p ages
# #or
# ages.keep_if {|n, a| a < 100}
# p ages


#4 Convert the string in the following ways (code will be executed on original munsters_description above):
# munsters_description = "The Munsters are creepy in a good way."
# #4.1.
# munsters_description.capitalize
# #4.2. 
# munsters_description.swapcase
# #4.3
# munsters_description.downcase
# #4.4
# munsters_description.upcase

# 5. We have most of the Munster family in our age hash. add ages for Marilyn and Spot to the existing hash
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# family = ages.merge(additional_ages)
# p family
# #or 
# ages.merge!(additional_ages)
# p ages


#6 Pick out the minimum age from our current Munster family hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# youngin = ages.values.min
# p youngin

# oldypants = ages.values.max
# p oldypants


#7 See if the name "Dino" appears in the string below:
# advice = "Few things in life are as important as house training your pet dinosaur."

# advice.include?("Dino")
# #or 
# advice.match("Dino")

#8 Find the index of the first name that starts with "Be"
#flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # a.index { |x| x == "b" } 
# # flintstones.index { |name| name[0, 2] == "Be" }
# p flintstones.index {|x| x[0, 2] == "Be"}

#9 Using array#map!, shorten each of these names to just 3 characters:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.map {|name| name[0..2]}


#10 Again, shorten each of these names to just 3 characters -- but this time do it all on one line:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
see 9 above


