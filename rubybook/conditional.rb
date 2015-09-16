# else ifs
# puts "Put in a number"
# a = gets.chomp.to_i

# if a == 3
#   puts "a is 3"
# elsif a == 4
#   puts "a is 4"
# else
#   puts "a is neither 3, nor 4"
# end

# puts "again"
# x = gets.chomp.to_i

# puts "x is 3" if x == 3

# case statement in a times loop
# 5.times do 
# a = gets.chomp.to_i
#   answer = case
#   when a < 5
#    "yo dat aint enough to be 5"
#   when a == 5
#    "yo, a = 5"
#   when a > 5
#    "yo, dats too big to be 5"
#   else
#    "come on now, this isn't even possible"
#   end
# puts answer
# end

# Exercise 2: Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

# input = gets.chomp.to_s

# def CapsIfEleven(x)
#   if x.length > 10
#     puts x.upcase
#   else
#     puts x
#   end #if
# end # CapsIfEleven

# CapsIfEleven(input)



# 3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

# puts "Enter a number between 0 and 100:"
# entry = gets.chomp.to_i

# feedback = case 
# when (entry >= 0) && (entry <= 50)
#   "ooh so teeny! (0-50)"
# when (entry >= 51) && (entry <= 100)
#   "ooh you uppaclass now (51-100)"
# else
#   "else: that is not a valid entry"
# end

# puts feedback
# this does not accurately assess floats


# 5. Rewrite your program from exercise 3 using a case statement. Wrap each statement in a method and make sure they both still work.

# def WhenCase(num)
#   case num
#   when 0..50
#     puts "ooh so teeny! (0-50)"
#   when 51..100
#     puts "ooh you uppaclass now (51-100)"
#   else
#     puts "else: that is not a valid entry"
#   end
# end #WhenCase

# def IfStatements(num)
#   if (num >= 0) && (num <= 50)
#     puts "ooh so teeny! (0-50)"
#   elsif (num >= 51) && (num <= 100)
#     puts "ooh you uppaclass now (51-100)"
#   else
#     puts "else: that is not a valid entry"
#   end
# end #IfStatements

# puts "Enter a number between 0 and 100:"
# entry = gets.chomp.to_i

# WhenCase(entry)
# IfStatements(entry)

#6 When you run the following code...

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end

# equal_to_four(5)

# You get the following error message..
# test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end
# Why do you get this error and how can you fix it?

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end # <-- missing this end statement
end

equal_to_four(5)