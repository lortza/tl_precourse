#original hash
cat = {name: "zorro", fur: "black", collar: "blue", eyes: "yellow"}
puts cat
# add a pair
cat[:napping] = true
puts cat
#add another pair
cat[:fleas] = true
puts cat
#modify a pair
cat[:fleas] = false
puts cat
#delete a pair
cat.delete(:fleas)
puts cat

#new hash
house = {location: "poang", water: true}
puts house

#merge 2 hashes
house.merge!(cat) #merges cat into house
puts house

cat.each do |key, value|
  puts "#{key.capitalize}: #{value}"
  end

test = house.to_a
puts test