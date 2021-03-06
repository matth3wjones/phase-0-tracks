# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # accept parameters of string
  # separate spaces to identify individual items
  # create empty hash
  # add each item to the hash
  # set key, and let value be 1
  # print the list to the console
  # print to test
# output: HASH

def grocery_list(items)
  #method for create list
  array = items.split(" ")
  #separate by spaces TEST
  #p grocery_array
  #test print
  hash = {}
  #empty hash
  array.each {|item| hash[item] = 1}
  #ends hash
  hash
  #test hash
end
#end list method

our_list = grocery_list("apple carrot pizza cereal")

# Method to add an item to a list
# input: list, item name, and optional quantity
# input types: hash, string with only 1 item, number
#two variables
# steps: add a new item, and a quantity to our hash
# output: original HASH plus items

def add_to_list(list, item, quantity)
  #method to add items
  list[item] = quantity
end
#ends add method

add_to_list(our_list, "cheese", 2)
#test of method
#p our_list
#test of our list

# Method to remove an item from the list
# input: origin hash, item, quantity
# steps:
# accept 3 parameters, the hash itself, the item, quantity
# iterate through
# check item
# if match, remove it
# output: original hash with a item removed

def remove_an_item(list, item)
  #method to remove item
  list.delete(item)
end
#ends remove method

remove_an_item(our_list, "carrot")
#code to test remove
#p our_list

# Method to update the quantity of an item
# input: list, item, new quantity
# steps:
# call item by key
# update quantity
# output: original hash with updated quantities

def update_quantity(list, item, quantity)
  #method to update quantity
  #can also add items
  list[item] = quantity
end
#ends update method

update_quantity(our_list, "pizza", 63)

#p our_list

# Method to print a list and make it look pretty
# input: our_list variable
# steps:
# accept parameter identifying list
# print out items one by one with quantity
# good formatting
# output: Nice looking print out

def print_grocery_list(list)
  #print method
  puts "Here is your grocery list:"
  #user interface print out
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
  list.each do |key, variable|
    #do loop
    puts "#{key.capitalize} #{variable}"
  end
  #ends do loop
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
end
#end print method

print_grocery_list(our_list)

new_list = grocery_list("lemonade tomatoes onions ice_cream")
update_quantity(new_list, "lemonade", 2)
update_quantity(new_list, "tomatoes", 3)
update_quantity(new_list, "ice_cream", 4)
remove_an_item(new_list, "lemonade")
update_quantity(new_list, "ice_cream", 1)
print_grocery_list(new_list)
#test output

#
#
#REFLECT
#
#What did you learn about pseudocode from working on this challenge?
# => I learned how detailed pseduocoding should be, creating well thought out pseudocoding case make the coding process much easier, but requires more forethought.  This forethought is also a troubleshooting opportunity to fix any potential issues with logic and not the syntax

#What are the tradeoffs of using arrays and hashes for this challenge?
# => Arrays cannot include a value, while using a hash allows you to call an item by key and not index.

#What does a method return?
# => A method returns a value by default, it will provide the value of the last line executed
#
#What kind of things can you pass into methods as arguments?
# => Objects, strings, keys, integers, blocks
#
#How can you pass information between methods?
# =>using the inherent output, one can pass information back and forth using using parameters in their methods.
#
#What concepts were solidified in this challenge, and what concepts are still confusing?
# =>Pseudocoding is something I feel more solidified in and yet more confused with; as I am still learning how to do this activity, pseudocoding is difficult.
#
#
#