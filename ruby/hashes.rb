#
#Place each client's set of data in hashes with the following data:
#
#
##Name
#Age
#City
#Square Feet
#Children
#Theme
#
#
#Allow user to input and see data
#
#Ask for updates
#IF 'none' skip
#
#do not worry about user error
#
#BUSINESS LOGIC
#
clientProfile = {
  name: "",
  age: "",
  city: "",
  sqFt: "",
  kids: "",
  theme: ""
}
#blank client profile
#
#

#USER INTERFACE
#
puts "Enter client's full name"
clientName = gets.chomp
clientProfile[:name] = clientName
#requests, collects, and adds name to hash in string form
puts "Enter client age"
clientAge = gets.chomp.to_i
clientProfile[:age] = clientAge
#requests, collects, and adds age to hash in integer form
puts "Enter client city"
clientCity = gets.chomp
clientProfile[:city] = clientCity
#requests, collects, and adds city to hash in sting form
puts "How many square feet is #{clientName}'s place?"
sqFt = gets.chomp.to_i
clientProfile[:sqFt] = sqFt
#requests, collects, and adds square footage to hash in integer form, using the same variable
puts "How many children does #{clientName} have?"
clientKids = gets.chomp.to_i
clientProfile[:kids] = clientKids
#requests, collects, and adds kid count to hash in integer form
puts "What is the decor/theme?"
clientTheme = gets.chomp
clientProfile[:theme] = clientTheme
#requests, collects, and adds theme to hash

puts "."
puts ".."
puts "..."
#useless dots that look cute on terminal screen
puts "Processing"
#useless processing info to look cute on terminal
puts "."
puts ".."
puts "..."
puts "Please review each entry:"
puts "--->To save, type 'n' then enter"
puts "--->To edit, type 'y' then  enter"
#directions on how to use review screen

puts "Client's name: #{clientName}? Need to edit?"
editInput = gets.chomp
if editInput == "y"
  puts "Enter updated information:"
  clientProfile[:name] = gets.chomp
end
#review, update name

puts "Client's age: #{clientAge}; Need to edit?"
editInput = gets.chomp
if editInput == "y"
  puts "Enter updated information:"
  clientProfile[:age] = gets.chomp.to_i
end
#review, update age in integer form

puts "Client's city: #{clientCity}; Need to edit?"
editInput = gets.chomp
if editInput == "y"
  puts "Enter updated information:"
  clientProfile[:city] = gets.chomp
end
#review, update city

puts "Client's square footage: #{sqFt}; Need to edit?"
editInput = gets.chomp
if editInput == "y"
  puts "Enter updated information:"
  clientProfile[:sqFt] = gets.chomp.to_i
end
#review, update square footage in integer form

puts "Client has #{clientKids} children: Need to edit?"
editInput = gets.chomp
if editInput == "y"
  puts "Enter updated information:"
  clientProfile[:kids] = gets.chomp.to_i
end
#review, update kids

puts "Client decor/theme: #{clientTheme}; Need to edit?"
editInput = gets.chomp
if editInput == "y"
  puts "Enter updated information:"
  clientProfile[:theme] = gets.chomp
end
#review, update theme

puts clientProfile


