# return.rb

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

add_three(5).times do 
  puts 'this should print 8 times'
end 