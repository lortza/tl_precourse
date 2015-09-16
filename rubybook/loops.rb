#2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

=begin
puts "I want a cookie and I'm not going to stop asking until you type 'Yes'."
sleep(1)
puts "Can I have a cookie?"
input = gets.chomp.to_s.upcase

while input != "YES"
  puts "How about now?"
  sleep(1)
  input = gets.chomp.to_s.upcase
end
puts "YAYAYYYAYYAYAAYY! I get a c00kie!!!"
=end


# 3. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

=begin
cats = ["noche", "zorro", "yolanda", "pc"]

cats.each_with_index do |cat, index|
  puts "#{index}. #{cat}"
end
=end

# 4. Write a method that counts down to zero using recursion.

=begin
x = 10

while x >= 0
  puts x
  x -= 1
end
=end


def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)

