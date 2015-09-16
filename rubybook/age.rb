# Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

puts "Please enter your name."
name = gets.chomp
puts "Hi #{name}! What year were you born?"
year_born = gets.chomp.to_i
present_year = Time.now.year
age_now = present_year - year_born
puts "Ah #{age_now} is a lovely age to be."

x = 10
4.times do
  puts "In #{x} years, you'll be #{age_now + x}."    
  x += 10
end