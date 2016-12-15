puts "Welcome to the Werewolf Resources Department"
puts "How many applicants are being processed at this time?"
numApplicants = gets.chomp.to_i
for i in 0..(numApplicants-1)
  puts "Enter First Name"
  firstName = gets.chomp
  puts "Enter Last Name"
  lastName = gets.chomp
  puts "Enter Age"
  applicantAge = gets.chomp
  puts "Enter Year Born"
  birthYear = gets.chomp.to_i
  puts "Would you like some garlic bread fresh from our cafeteria?  Answer y/n"
  garlicReply = gets.chomp.downcase
  puts "Would you like to enroll in the health insurance plan? Answer y/n "
  insuranceReply = gets.chomp.downcase

allergyVamp = nil

  loop do
    puts "Do you have any allergies? When finished, or if no allergies type done"
    allergyAnswer = gets.chomp.downcase
    if allergyAnswer == "sunshine"
      allergyVamp = true
      break
    elsif allergyAnswer == "done"
      break
    end
  end

  currentYear = Time.new.year
  estimatedAge = currentYear - birthYear
  finalAge = nil
  fullName = firstName + " " + lastName

  if estimatedAge.to_i == applicantAge.to_i || (estimatedAge.to_i - 1) ==  applicantAge.to_i
    finalAge = true
  else
    finalAge = false
  end

  puts "Results for #{[firstName, lastName].compact.join(' ')}:"
  #Comparison of the Applicant's claimed age versus their estimated age
  #puts "Estimated Age: #{estimatedAge}"
  #puts "Claimed Age: #{applicantAge}"

  #Formula checks if the Applicant supplied the correct age, accounting   for if applicant's birthday has not happened.
  if allergyVamp == true
    puts "Definitely a vampire"
  elsif fullName == "Drake Cula" || fullName == "Tu Fang"
    puts "Definitely a vampire"
  elsif finalAge == false && (garlicReply == "n" && insuranceReply == " n" )
    puts "Almost certainly a vampire"
  elsif finalAge == false && (garlicReply == "n" || insuranceReply == " n" )
    puts "Probably a vampire"
  elsif finalAge == true && (garlicReply == "y" || insuranceReply == "y ")
    puts "Probably not a vampire"
  else
    puts "Results inconclusive"
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
