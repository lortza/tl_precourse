# exercises
# http://www.gotealeaf.com/books/ruby/read/intro_exercises

#1 Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
# puts " EX 1: "
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array.each do |x|
#   puts x
# end


#2 Same as above, but only print out values greater than 5.
# puts " EX 2: "
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array.each do |x|
#   if x > 5
#     puts x
#   end
# end

# 3 Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
# puts "EX 3a: "
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array2 = array.select do |x|
#   x % 2 != 0
# end
# puts array2
# puts
# puts "EX 3b: "
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array2 = []
# array.each do |x|
#   if x.odd? == true
#     array2.push(x)
#   end#if
# end#each
# puts array2

#4 Append "11" to the end of the original array. Prepend "0" to the beginning.
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array.push(11)
# puts array

# array.unshift(0)
# puts array

#5 Get rid of "11". And append a "3".
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# array.pop
# array.push(3)
# puts array

#6 Get rid of duplicates without specifically removing any one value.
# array = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
# array2 = [1, 2, 3, 4, 5]
# array3 = array.push(array2).flatten.sort
# p "Array 3: #{array3}"

# array4 = array3.uniq!
# p "Array 4: #{array4}"

#8 Create a Hash using both Ruby syntax styles.
# hash1 = {:key1 => "value1"}
# hash2 = {key2: "value2"}

#9 Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#9.1. Get the value of key `:b`.
# h = {a:1, b:2, c:3, d:4}
# puts h[:b]

# #9.2. Add to this hash the key:value pair `{e:5}`
# h[:e] = 5
# puts h

# #9.3. Remove all key:value pairs whose value is less than 3.5
# h.each do |k, v|
#   if v.to_f < 3.5
#     h.delete(k)
#   end
# end
# puts h


#12 Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# #12.A.
# contacts["Joe Smith"] = contact_data[0]
# contacts["Sally Johnson"] = contact_data[1]
# p contacts

# #12.B.
# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[0][0]
# contacts["Sally Johnson"][:address] = contact_data[0][1]
# contacts["Sally Johnson"][:phone] = contact_data[0][2]
# p contacts


#13 Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
# contacts = {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}, "Sally Johnson"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}}
# #13.A.
# puts contacts["Joe Smith"][:email]
# puts contacts["Sally Johnson"][:phone]
# #13.B.
# puts "Joe's Email: #{contacts["Joe Smith"][:email]}"
# puts "Sally's Phone: #{contacts["Sally Johnson"][:phone]}"


#14 In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods. Note that this exercise is only concerned with dealing with 1 entry in the contacts hash.

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# contacts = {"Joe Smith" => {}}
# fields = [:email, :address, :phone]

# UNRESOLVED
# http://www.gotealeaf.com/books/ruby/read/intro_exercises


#15 Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

# #15.A.
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if {|word| word.start_with?("s")}
# p arr

# #15.B.
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if do |word|
#   (word.start_with?("s")) || (word.start_with?("w"))
# end

# p arr

#16 Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

# a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
# b = []
# a.each do |x|
#   b << x.split.flatten
# end
# p b

#17
These hashes are the same
