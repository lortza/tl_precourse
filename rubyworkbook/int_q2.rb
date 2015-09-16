# http://www.gotealeaf.com/books/ruby_workbook/read/intermediate_quiz_2

#1 Figure out the total age of just the male members of the family.
# munsters = { 
#   "Herman" => { "age" => 32, "gender" => "male" }, 
#   "Lily" => { "age" => 30, "gender" => "female" }, 
#   "Grandpa" => { "age" => 402, "gender" => "male" }, 
#   "Eddie" => { "age" => 10, "gender" => "male" } 
# }

# #my solution
# age_catcher = []
# munsters.each do |key, value|
#   if value["gender"] == "male"
#     age_catcher.push(value["age"])
#   end#case
# end#munsters each
# puts age_catcher
# sum = age_catcher.inject(:+)
# puts "_____"
# puts sum

# # workbook solution. i love this!
# total_male_age = 0
# munsters.each do |name, details|
#   total_male_age += details["age"] if details["gender"] == "male"
# end


#2 Given this previously seen family hash, print out the name, age and gender of each family member ...like this:
#(Name) is a (age) year old (male or female).

# munsters = { 
#   "Herman" => { "age" => 32, "gender" => "male" }, 
#   "Lily" => { "age" => 30, "gender" => "female" }, 
#   "Grandpa" => { "age" => 402, "gender" => "male" }, 
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }


# munsters.each do |name, details|
#   puts "#{name.capitalize} is a #{details["age"]} year old #{details["gender"]}."
# end #each


#3 How can we refactor this exercise to make the result easier to predict and easier for the next programmer to maintain?

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# i really don't understand this exercise


#4 A common idiom used to solve this conundrum is to use the String#split in conjunction with Array#join methods to break our string up and then put it back together again. Use this technique to break up the following string and put it back together with the words in reverse order:

# sentence = "Humpty Dumpty sat on a wall."
# broken = sentence.split.reverse!
# fixed_in_reverse = broken.join(" ")
# p fixed_in_reverse


#5 What is the output of the following code?

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)
# p answer - 8
# it's answer - 8, which is 42 - 8. the method didn't do anything to the answer variable.


#6 One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

# mess_with_demographics(munsters)
# p munsters
# Did the family's data get ransacked, or did the mischief only mangle a local copy of the original hash? (why?)

# in MY environment, right here in my subl file, everything is safe. i can run this program over and over and everything is fine because i am redefining the hash at the start of each run. however, if i print the munsters hash after running the method, i can see that the original hash has been modified. so, doghouse. 


#7 Method calls can take expressions as arguments. Suppose we define a function called rps as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end
# What is the result of the following call? ruby puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#i really don't understand that call at all. 


#8 Consider these two simple methods. What would be the output of bar(foo) ?

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar("yes")

#solution "no"
