#1 What would you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# answer: [1, 2, 2, 3] because it was not uniq!

#2 Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios: 
#2.1. what is != and where should you use it? 
# a != means does not equal and you'd use it anywhere you need logical syntax

# #2.2. put ! before something, like !user_name 
# and it will turn an onject into it's boolean opposite

# #2.3. put ! after something, like words.uniq! 
# Adding a bang after a method will mutate the object you're calling the method on. ex: obj.upcase! will permanently change that object to being in all caps, whereas obj.upcase will just display it in caps during that instance. this is useful in front-end programming in rails.

# #2.4. put ? before something
# and it look like a ternary operator

# #2.5. put ? after something 
# will return a true or false

# #2.6. put !! before something, like !!user_name
# and it will turn an onject into its boolean equivalent


#3 Replace the word "important" with "urgent" in this string:
# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.gsub("important", "urgent")


#4 The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ. What would the following return?
# numbers = [1, 2, 3, 4, 5]
# p numbers.delete_at(1) # deletes the #2
# p numbers.delete(1) # deletes the #1

#5 Programmatically determine if 42 lies between 10 and 100.
# if (42 > 10) && (42 < 100)
#   puts true
# else
#   puts false
# end
# #or 
# if (10..100).include?(42)
#   puts true
# else
#   puts false
# end


#6 Starting with the string below, show two different ways to put the expected "Four score and " in front of it.
# famous_words = "and seven years ago..."
# #6.1
# famous_words = "Four score and " + famous_words
# #6.2
# famous_words = famous_words.insert(0, "Four score and ")

#7 kernal eval
# seriously? that just hurt my brain.


#8 make this into an unnested array
# flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# p flintstones.flatten

#9 Turn this into an array containing only two elements: Barney's name and Barney's number

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# array = []
# flintstones.each do |k, v|
#   if k == "Barney"
#     array.push(k, v)
#   end #if
# end #each
# p array

# #refactor
# flintstones.assoc("Barney")


#10 Turn this array into a hash where the names are the keys and the values are the positions in the array.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}

flintstones.each_with_index do |name, index|
  hash[name] = index
end #each
p hash
