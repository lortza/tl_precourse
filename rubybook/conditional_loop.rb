# conditional_loop.rb

# i = 0
# loop do
#   i += 2
#   puts "#{i}"
#   if i == 10
#     break       # this will cause execution to exit the loop
#   end
# end


(1..10).each do |x|
  if x % 2 == 0
    puts x
  end #if
end #eachdo
