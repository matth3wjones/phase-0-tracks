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
first_name = gets.chomp.chars
#save user input, separate first name by letter
puts "What is your last name?"
#request for users last name
last_name = gets.chomp.chars
#save user input, separate last name by letter

p first_name
#test
p last_name
#test

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


def vowel_or_consonant(name_array)
  #method to check for letter type
  index = 0
  #loop index
  vowels = ["a", "e", "i", "o" "u"]
  #vowel array
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  #consonant array
  while index < name_array.length
    #loop thru each character
    if vowels.select! { || }
      #check if vowel
      puts name_array[index]
      #test
    end
    #ends if loop
    index += 1
    #loop counter
  end
  #ends while loop
end
#end vowel or not method



puts vowel_or_consonant(first_name)
puts vowel_or_consonant(last_name)