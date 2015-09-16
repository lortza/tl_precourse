# 1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }

# immediate = family.select {|k, v| (k == :sisters) || (k == :brothers)}
# puts immediate

# immediate_names = immediate.values.flatten
# puts immediate_names


# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

##2.A. "merge" does not mutate the original hash
# cat = {name: "zorro", fur: "black", collar: "blue", eyes: "yellow"}
# house = {location: "poang", water: true}
# puts "house.merge: #{house.merge(cat)}"
# puts "house after: #{house}"

##2.B. "merge!" does mutate the original hash
# cat = {name: "zorro", fur: "black", collar: "blue", eyes: "yellow"}
# house = {location: "poang", water: true}
# puts "house.merge!: #{house.merge!(cat)}"
# puts "house after: #{house}"

#3 Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

# hash = {name: "zorro", fur: "black", collar: "blue", eyes: "yellow"}

# hash.each do |k, v|
#   puts "Key: #{k}"
# end
# puts
# hash.each do |k, v|
#   puts "Value: #{v}"
# end
# puts 
# hash.each do |k, v|
#   puts "#{k.upcase}: #{v.capitalize}"
# end

#5 What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

# hash = {name: "zorro", fur: "black", collar: "blue", eyes: "yellow"}
# puts hash.include?("brown")
# puts "OR"

# if hash.has_value?("brown")
#   puts "YIS"
# else
#   puts "Nope"
# end

#6 Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this: ["demo", "dome", "mode"]

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

words.sort!
p words

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end
