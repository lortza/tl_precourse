# next_loop.rb

i = 0

loop do
  i += 2
    if i == 4 || i == 6
     next        # skip rest of the code in this iteration
    end #if
  puts "#{i}"
    if i == 10
      break
    end #if
end #loop
