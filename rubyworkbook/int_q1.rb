# http://www.gotealeaf.com/books/ruby_workbook/read/intermediate_quiz_1

#1 Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens). For this exercise, write a one-line program that creates the following output 10 times:
# The Flintstones Rock!
#  The Flintstones Rock!

# string = "The Flintstones Rock! (ex 1)"
# spaces = " "
# 10.times do
#   puts spaces + string
#   spaces<< " "
# end
# #or
# 10.times do |x| 
#   puts (" " * x) + "The Flintstones Rock! (ex 2)"
# end
# #or
# 10.times {|x| puts " " * x + "The Flintstones Rock! (ex 3)"}


#2 Create a hash that expresses the frequency with which each letter occurs in this string:
# statement = "The Flintstones Rock"
# results = {}
# statement.downcase!
# letters_array = ("a".."z").to_a
# letters_array.each do |x|
#   letter_count = statement.scan(x).count
#   #puts "#{x}: #{letter_count}"
#   if letter_count > 0
#     results[x] = letter_count
#   end #if
# end #each
# p results

#3 The result of the following statement will be an error. Why is this and what are two possible ways to fix this?
# puts "the value of 40 + 2 is " + (40 + 2)
# this is a fixnum error because you can't use the + with a string and an integer. you have to convert the integer to a string or use interpolation.

#4 What happens when we modify an array while we are iterating over it? What would be output by this code?
#4.1.
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end
# prints 1 and 3

# #4.2.
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end
# prints 1, 2


#5 Alan wrote the following method, which was intended to show all of the factors of the input number:
#Alyssa noticed that this will fail if you call this with an input of 0 or a negative number and asked Alan to change the loop. How can you change the loop construct (instead of using begin/end/until) to make this work? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# ow this hurts my brainand at the moment i am not interested in relearning math in order to solve a logic problem. 


#6 Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

#She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size >= max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size >= max_buffer_size
#   buffer
# end
# #buffer changes value, but input_array stays the same


#7 Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator, A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached. There is an error with the limit variable. What's wrong with the code?

# @limit = 15

# def fib(first_num, second_num)
#   while second_num < @limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# you can't have a variable inside and outside of a method. you need to globalize it first if you want to have access to it in both places. 


#8 In another example we used some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize! This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. Write your own version of the rails titleize implementation.

#title = "this is the title of my book"
# def titleize(title)
#   title_array = title.split
#     title_array.each do |x|
#       x.capitalize!
#     end#each
#   title = title_array.join(" ")
#   puts title
# end#def

# sample = "how cow this is also a cat"
# titleize(sample)


#9 Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# adds new key value pair to each person's details
# munsters.each do |key, value|
#   value[:age_group] = ""
# end
# puts munsters


munsters.each do |key, value|
  case value["age"]
  when 0..17
    value["age_group"] = "kid"
  when 18..64
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end#case
end#munsters each
puts munsters

