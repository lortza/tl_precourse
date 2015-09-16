# Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.

puts "What's your first name?"
first = gets.chomp
puts "What's your last name?"
last = gets.chomp
puts "Hi #{first} #{last}! It's so lovely to meet you!"

puts "I like the sound of that..."

x = 0
10.times do
  x += 1
  puts "#{first} #{last} (#{x})"
end

full_name = first + " " + last
puts "One last time..."
puts full_name