# Write a program that contains a method called greeting that takes a name as its parameter. It then prints a greeting message with the name included in it.

def greeting(name)
  puts "Hello, #{name.capitalize}!"
end

puts "Please enter your name:"
input = gets.chomp
greeting(input)