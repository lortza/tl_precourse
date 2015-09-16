# optional_parameters.rb

# def greeting(name, options = {})
#   if options.empty?
#     puts "Hi, my name is #{name}"
#   else
#     puts "Hi, my name is #{name} and I'm #{options[:age]}" +
#          " years old and I live in #{options[:city]}."
#   end
# end

# greeting("Bob")
# greeting("Bob", {age: 62, city: "New York City"})


puts "Name: "
v_name = gets.chomp
puts "Age: "
v_age = gets.chomp
puts "City: "
v_city = gets.chomp


def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name.capitalize}. I'm #{options[:age]}" +
         " years old and I live in #{options[:city].capitalize}."
  end
end

greeting(v_name)
greeting(v_name, {age: v_age, city: v_city})
