puts "Hamster name?"
hamster_name = gets.chomp

puts "On a scale of 1 to 10, how loud is #{hamster_name}?"
volume_level = gets.chomp.to_i

puts "What color is #{hamster_name}?"
color = gets.chomp

puts "Is #{hamster_name} good for adoption?"
adoption = gets.chomp

puts "What is #{hamster_name}'s  estimated age?"
age = gets.chomp.to_i
if age == 0
   age = nil
end

p "Hamster Sanctuary Intake for #{hamster_name}. #{hamster_name} is #{color} and is said to be #{age} years old (note, if age is blank, no age is known).  We identified #{hamster_name} as having a volume of #{volume_level} on a scale of 1 to 10. Is adoption recommended? #{adoption}!"