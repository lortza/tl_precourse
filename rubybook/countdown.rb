# countdown.rb

# x = gets.chomp.to_i

# while x >= 0
#   puts x
#   x = x - 1
# end

# puts "Done!"

# While Loop
# puts "Please enter a number for Blast Off Countdown:"
# entry = gets.chomp.to_i

# while entry > 0
#   puts entry
#   entry -= 1
#   sleep(1)
# end
# puts "BLAST OFF!"

# Until Loop
puts "Please enter a number for Blast Off Countdown:"
entry = gets.chomp.to_i

until entry == 0
  puts entry
  entry -= 1
  sleep(1)
end
puts "BLAST OFF!"



