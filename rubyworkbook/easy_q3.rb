# http://www.gotealeaf.com/books/ruby_workbook/read/easy_quiz_3

# 1. Show an easier way to write this array:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


#2. How can we add the family pet "Dino" to our usual array:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.push("Dino")
# flintstones << "Dino2"
# puts flintstones


#3. How can we add multiple items to our array? (Dino and Hoppy)
# flintstones.concat(%w(Dino Hoppy))


#4. Shorten this sentence. remove everything starting from "house".
# advice = "Few things in life are as important as house training your pet dinosaur."

# p advice.slice(0, advice.index("house")) #"Few things..."
# advice.slice!(0, advice.index("house")) # "House training..."
# p advice

#5 Write a one-liner to count the number of lower-case 't' characters in the following string:
# statement = "The Flintstones Rock!"
# p statement.count("t")
# #or
# p statement.scan("t").count


#6 Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
puts title.center(40)



