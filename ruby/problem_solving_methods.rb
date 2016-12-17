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