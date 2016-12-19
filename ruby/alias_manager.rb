#
#swap first and last name
#change vowels to next vowel
#change consonants to next consonant
#
#
#request name#
#swap names
#method to separate by char
#method to test for consonant or vowel
#method replace vowel with looping array of vowels
#method replace consonant with looping array of consonants

#
#
#USER INTERFACE
#

puts "What is your first name?"
#request for users first name
first_name = gets.chomp
#receive user input
puts "What is your last name?"
#request for users last name



#
#
#BUSINESS LOGIC
#

spy_name = []
#empty array to hold name
vowels = ["a", "e", "i", "o" "u"]
#array of vowels
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
#array of consonants

def swap_names(actual)
  #method to swap names
  actual.split(' ')
  #separate first and last names
  p actual
  #test of above

end
#end name swap method


def vowel_or_consonant(x)
  #method to check for letter type
  index = 0
  #loop index
  while index < spy_name.length
    #loop thru each character

  end
  #ends while loop
  index += 1
  #loop counter
end
#end vowel or not method




swap_names(real_name)