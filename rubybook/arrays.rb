#1 Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# if arr.include? number
#   puts "YIS"
# else
#   puts "Naieu"
# end

# 3 How do you print the word "example" from the following array?

# arr = [["test", "hello", "world"],["example", "mem"]]
# puts arr[1][0]

# 7 Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

# original = [1, 2, 3, 4, 5]
# new = []

# original.each do |x|
#   new.push(x.to_i + 2)
# end

# puts new


original = [1, 2, 3, 4, 5]
new = []

original.each do |x|
  new.push(x.to_i + 2)
end

pairs = original.zip(new)

pairs.each do |o, n|
  puts "Original: #{o} -> New: #{n}"
end

