#Encrypt Formula

def encrypt(userPassword)
  index = 0
  #counter set at zero
  encryptedArray = []
  #empty array to hold processed password
  while index < userPassword.length
    #loop repeats for each character in password
    if userPassword[index] == "z"
      #condition to correct z error
      encryptedArray << "a"
      #places the 'a' in the array
    else
      encryptedArray << userPassword[index].next
      #places the next letter in the alphabet (for a given character( in array
    end
    #ends 'if' loop
    index += 1
    #starts counting so loop isn't infinite
  end
  #ends 'while' loop
  p "#{encryptedArray.join}"
  #prints result '.join' used to put into a word
end
#end of Encrypt Formula

#Decrypt Formula

def decrypt(userPassword)
  index = 0
  #counter set at 0
  decryptedArray = []
  #empty array to hold processed password
  alphabet = ('a'..'z').to_a.join
  #creates single word string of the alphabet
  until index == userPassword.length
    #loop repeats until it is same length as input
    letterIndex = alphabet.index(userPassword[index])
    #finding letter index in alphabet
    prevLetter = letterIndex - 1
    #identifies letter before
    decryptedArray << alphabet[prevLetter]
    #places previous letter in the alphabet (for a given character) in array
    index += 1
    #starts counting so loop isn't infinite
  end
  #ends 'until' loop'
  p "#{decryptedArray.join}"
end
#end of Decrypt Formula

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))

#Interface Code
puts "Would you like to encrypt or decrypt?"
#asks user which method to call
selectedAction = gets.chomp.downcase
#collects user input
if selectedAction != ("encrypt" || "decrypt")
  #condition to correct bad user entry
  puts "Enter just 'encrypt' or 'decrypt'"
  #informs user of error, and re-asks user which method to call
  selectedAction = gets.chomp.downcase
  #collects user input
end
#ends 'if' statement
puts "Enter password"
#asks user for password
password = gets.chomp
#collects user input for password
if selectedAction == "encrypt"
  #condition if user wants to encrypt
  encrypt(password)
  #calls encrypt method and encrypts password
else
  #condition of only remaining input option, decrypt
  decrypt(password)
  #calls decrypt method and decrypts password
end
#end of Interface Code