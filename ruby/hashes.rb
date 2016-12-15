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


#USER INTERFACE
#
puts "Enter client's full name"
clientName = gets.chomp
puts "Enter client age"
clientAge = gets.chomp.to_i
puts "Enter client city"
clientCity = gets.chomp
puts "How many square feet is #{clientName}'s place?"
sqFt = gets.chomp.to_i
puts "How many children does #{clientName} have?"
clientKids = gets.chomp.to_i
puts "What is the decor/theme?"
clientTheme = gets.chomp


