# http://www.gotealeaf.com/books/ruby_workbook/read/advanced_quiz_1

#1 What do you expect to happen when the greeting variable is referenced in the last line of the code below?

# if false
#   greeting = "hello world"
# end

# puts "response: #{greeting}"

# since the greeting variable is inherently true, and we don't have an action for true, we get nothing.


#2 What is the result of the last line in the code below?

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# #puts informal_greeting  #  => "hi there"
# puts greetings

# i totally got this wrong. the correct answer is {:a=>"hi there"}.

#3 What will be printed by each of these code groups?

#3.A)
#   def mess_with_vars(a, b, c)
#     a = b
#     b = c
#     c = a
#   end

# # variables
#   one = "ONE"
#   two = "TWO"
#   three = "THREE"

#   mess_with_vars(one, two, three)

# # outputs
#   puts "-----Q: 3.A.--------"
#   puts "one is: #{one}"
#   puts "two is: #{two}"
#   puts "three is: #{three}"

# # my response: we're not saving the new results back to the variables, so there should be no modification to their values.

# #3.B)
#   def mess_with_vars(a, b, c)
#     a = "b"
#     b = "c"
#     c = "a"
#   end

#   one = "ONE"
#   two = "TWO"
#   three = "THREE"

#   mess_with_vars(one, two, three)

#   puts "-------Q: 3.B.--------"
#   puts "one is: #{one}"
#   puts "two is: #{two}"
#   puts "three is: #{three}"

# # my response: we're still not saving the new results back to the variables, so there should be no modification to their values.

# #3.C)
#   def mess_with_vars(a, b, c)
#     a.gsub!("one","B")
#     b.gsub!("two","C")
#     c.gsub!("three","A")
#   end

#   one = "one"
#   two = "two"
#   three = "three"

#   mess_with_vars(one, two, three)
#   puts "-------Q: 3.C.--------"
#   puts "one is: #{one}"
#   puts "two is: #{two}"
#   puts "three is: #{three}"

  #my response: gsub will modify the original string, so this method should actually work.


#4 A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. That is, without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID with no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# def generate
#   # generate pool of all possible characters
#   alpha_low = ('a'..'z').to_a.shuffle
#   alpha_high = ('A'..'Z').to_a.shuffle
#   numbers = (0..9).to_a.shuffle
#   all_characters = alpha_low + alpha_high + numbers

#   # generate each segment 
#   x8 = all_characters.sample(8).join
#   x4 = all_characters.sample(4).join
#   y4 = all_characters.sample(4).join
#   z4 = all_characters.sample(4).join
#   x12 = all_characters.sample(12).join

#   # concatenate full number
#   puts "#{x8}-#{x4}-#{y4}-#{z4}-#{x12}"
# end
# generate


# #thier solution
# def generate_UUID
#     characters = [] 
#     (0..9).each { |digit| characters << digit.to_s }
#     ('a'..'f').each { |digit| characters << digit }

#     uuid = ""
#     sections = [8, 4, 4, 4, 12]
#     sections.each_with_index do |section, index|
#       section.times { uuid += characters.sample }
#       uuid += '-' unless index >= sections.size - 1
#     end

#     uuid
# end


#5 Ben was tasked to write a simple ruby method to determine if an input string is an IP address representing dot-separated numbers. e.g. "10.4.5.11". Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. You're not returning a false condition, and not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)." Help Ben fix his code.


def ipcheck(x)
  if x.split(".").size == 4
    puts "#{x} is an IP address"
  else 
    puts "NOPE"
  end #if
end#def

input = "123.2.33.46"
ipcheck(input)

