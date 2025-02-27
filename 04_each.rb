num_array = [1, 2, 3, 4, 5]


puts "-" * 35  # Prints 35 dashes

# num_array.each { |num| puts "Current number is: #{num}" }

num_array.each do |num| 
    puts "Current number is: #{num}" 
end

puts "-" * 35  # Prints 35 dashes

contact_hash = {
  "Mike" => "555-555-5555",
  "Bob"  => "555-555-5555",
  "Joe"  => "555-555-5555"
}

contact_hash.each { |name, number| puts "Name: #{name}, Number: #{number}" }

# contact_hash.each do |name, number| 
#     puts "Name: #{name}, Number: #{number}" 
# end

puts "-" * 35  # Prints 35 dashes

contact_hash.each_key do |key| 
    puts "key: #{key}"
end

puts "-" * 35  # Prints 35 dashes

contact_hash.each_value do |value| 
    puts "value: #{value}"
end

puts "-" * 35  # Prints 35 dashes

# "jaythree".each_char { |char| puts char }

"jaythree".each_char do |char| 
    puts char 
end

puts "-" * 35  # Prints 35 dashes

5.times { |i| puts "I'm on iteration #{i}" }

puts "-" * 35  # Prints 35 dashes