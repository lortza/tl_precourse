# perform_again.rb
# notice how the While and Until loops are forcing a Y to happen first and the regular loop isn't doing that

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp.upcase
  if answer != 'Y'
    break
  end # if
end #do

# answer = "Y"
# while answer == "Y" 
#   puts "Do you want to do that again?"
#   answer = gets.chomp.upcase
# end

# answer = "Y"
# until answer != "Y"
#   puts "Do you want to do that again?"
#   answer = gets.chomp.upcase
# end