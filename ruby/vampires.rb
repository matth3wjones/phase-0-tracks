puts "Enter First Name"
firstName = gets.chomp
puts "Enter Middle Initial"
middleInitial = gets.chomp
puts "Enter Last Name"
lastName = gets.chomp
puts "Enter Age"
applicantAge = gets.chomp
puts "Enter Year Born"
birthYear = gets.chomp
puts "Would you like some Garlic Bread fresh from our cafeteria?"
garlicReply = gets.chomp
puts "Would you like to enroll in the health insurance plan offered by the company?"
insuranceReply = gets.chomp
currentYear = Time.new.year
birthYear - currentYear = ageCheck
firstName + lastName = fullName

if ageCheck == applicantAge && (garlicReply == true || insuranceReply == true)
  puts "Probably not a vampire"
elsif ageCheck != applicantAge && (garlicReply == false || insuranceReply == false)
  puts "Probably a vampire"
elsif ageCheck != applicantAge && (garlicReply ==false && insuranceReply == false)
  puts "Almost certainly a vampire"
elsif fullName == "Drake Cula" || fullName == "Tu Fang"
  puts "Definitely a vampire"
else
  puts "Results inconclusive"
end

