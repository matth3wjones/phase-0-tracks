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
#BUSINESS LOGIC
#



def vowel_or_consonant
  puts "What is your first name?"
  #request first name
  first_name = gets.chomp.downcase
  #save user input, remove capitalization
  puts "What is your last name?"
  #request for users last name
  last_name = gets.chomp.downcase
  #save user input, remove capitalization
  #method to check for letter type
  vowels_first = first_name.gsub(/[aeiou]/,'a'=>'e','e'=>'i','i'=>'o','o'=>'u','u'=>'a')
  #check first name for vowels, replaces with next vowel
  vowels_last = last_name.gsub(/[aeiou]/,'a'=>'e','e'=>'i','i'=>'o','o'=>'u','u'=>'a')
  consonant_first = vowels_first.gsub(/[bcdfghjklmnpqrstvwxyz]/, 'b'=>'c', 'c'=>'d', 'd'=>'f', 'f'=>'g', 'g'=>'h', 'h'=>'j', 'j'=> 'k', 'k'=>'l', 'l'=>'m', 'm'=>'n', 'n'=>'p', 'p'=>'q', 'q'=>'r', 'r'=>'s', 's'=>'t', 't'=>'v', 'v'=>'w', 'w'=>'x', 'x'=>'y', 'y'=>'z', 'z'=>'b')
  consonant_last = vowels_last.gsub(/[bcdfghjklmnpqrstvwxyz]/, 'b'=>'c', 'c'=>'d', 'd'=>'f', 'f'=>'g', 'g'=>'h', 'h'=>'j', 'j'=> 'k', 'k'=>'l', 'l'=>'m', 'm'=>'n', 'n'=>'p', 'p'=>'q', 'q'=>'r', 'r'=>'s', 's'=>'t', 't'=>'v', 'v'=>'w', 'w'=>'x', 'x'=>'y', 'y'=>'z', 'z'=>'b')
  spy_name = "#{consonant_last.capitalize} #{consonant_first.capitalize}"
  #declares spy name
  puts "The name #{first_name.capitalize} #{last_name.capitalize} turns into #{spy_name}"
  #displays product of method
end
#end vowel or not method

#
#
#USER INTERFACE
#
#p first_name
#test
#p last_name
#test

input = nil
while input != "quit"
  puts "To generate spy name, type enter or quit"
  input = gets.chomp.downcase
  if input == "quit"
    puts "Exit"
  else
    vowel_or_consonant
  end
end