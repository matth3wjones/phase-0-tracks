#lostNumbers = [4, 8, 15, 16, 23, 42]
#
#def search_array(array, lottoNum)
#  index = 0
#
#  until index == array.length
#
#    if array[index] == lottoNum
#    return index
#    end
#    index += 1
#
#  end
#
#end
#
#p search_array(lostNumbers, 42)

#define method that takes array of integers
#method also takes interger to search
#returns nil if number not present

#method takes number of Fibonacci terms to generate and returns an array of the terms.
#for example
#fib(6)
#=> [0, 1, 1, 2, 3, 5]
#fib(100)
#=>218922995834555169026

#search for index [-1] and check against godzilla number

def fib(totalIndex)
  current_index = 2
  fib_array = [0, 1, 1]
  until current_index == totalIndex - 1
    next_index = (fib_array[-1].to_i + fib_array[-2].to_i)
    fib_array << next_index
    current_index += 1
  end
  return fib_array
end

p fib(100)


if fib(100)[-1] == 218922995834555169026
  puts "Yes, the last number is a match"
else
  puts "No, the last number is not a match"
end

#=>218922995834555169026

#sorting method
#
#
#create an array of unorganized items
#use method to print out an organized version of the array
#

messy_array = [1, 7, 3, 5, 2, 8, 9, 4, -6]
#=> [-6, 1, 2, 3, 4, 5, 7, 8, 9]
#p messy_array.sort
#built-in sorting method

def insertion_sort(array)
  #method to build a new array of integers ruby print
  sorted_array = [array[0]]
  #new array with initial integer, item in position 0 from original array
  array.delete_at(0)
  #removes item in position 0 from original array
  for i in array
    #insertion sort method
    #code evaluates value of initial integer with current integer, inserts ascending order
    insert_index = 0
    #index for looping
    while insert_index < sorted_array.length
      #loop continues for length of array
      if i <= sorted_array[insert_index]
        #evaluates for smaller numbers
        sorted_array.insert(insert_index, i)
        #if number is smaller than the initial integer, it places in front of array
        break
        #ends if code
      elsif insert_index == sorted_array.length - 1
        sorted_array.insert(insert_index+1, i)
        #inserts larger or equal numbers, behind the initial integer in ascending order
        break
        #ends elsif code
      end
      #ends if loop
      insert_index += 1
    end
    #ends while loop
  end
  #ends for loop
  sorted_array
  #prints new array organized in ascending order
end
#ends new method

print insertion_sort(messy_array)
# => [-6, 1, 2, 3, 4, 5, 7, 8, 9]
