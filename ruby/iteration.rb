#
#Write a method that takes a block
#
#
#
#
#
#
#
#
#def fake_method
#  puts "Hello world!"
#  yield
#end
#
#fake_method { puts "testing"}

hollywood_actors = ["Will Smith", "Tom Cruise", "Method Man"]

hollywood_actresses = {
  actress1: "Sally Field",
  actress2: "Sandra Bernhard",
  actress3: "Shelly Long"
}

#p hollywood_actresses
#p hollywood_actors

#array .each code
hollywood_actors.each { |x| puts "This is #{x.upcase}"}

#p hollywood_actors
#test to see that the originals are unchanged

#hash .each code
hollywood_actresses.each { |x , y|  puts y.upcase }

#array .map code
modified_hollywood_actors = hollywood_actors.map! do |actor|
  modified_hollywood_actors = actor.chop
end

#hash .map code
p modified_hollywood_actors
hollywood_actresses.map do |x,y|
  puts y.upcase
end

p hollywood_actresses

#hollywood_actors = ["Will Smith", "Tom Cruise", "Method Man"]

#---ARRAYS
lotto = [4, 8, 15, 16 , 23, 42]

#method iterates and deletes certain condition - array
lotto.delete_at(0)
puts "These are the lotto numbers, without the 1st number #{lotto}"

#method filters data for only certain condition - array
lotto.keep_if {|number| number > 17}
puts "These are the lotto numbers above 17 #{lotto}"

#different method filters for only certain conditions - array
lotto.select! {|number| number > 17}
puts "And again, here are the same numbers using a different method #{lotto}"

#method remove items until condition is false, then stops - array
lotto.take_while {|number| number > 17}
puts "3rd times a charm, here are your numbers again #{lotto}"


#---HASHES
mega_million = {
  "jan-7" => 3,
  "jan-14" => 7,
  "jan-21" => 13,
  "jan-28" => 18
 }

#method iterates and deletes certain condition - hash
#
mega_million.delete("jan-7")
puts "Here are the Mega Millions numbers without the first entry #{mega_million}"

#method filters data for only certain condition - hash
#
mega_million.keep_if{|date,mega_num| mega_num > 5 }
puts "Here are the Mega Million numbers bigger than 5 #{mega_million}"

#different method filters for only certain conditions - hash
#
mega_million.select{|date,mega_num| mega_num > 5}
puts "Again here are the winning Mega Million numbers over 5 #{mega_million}"

#method remove items until condition is false, then stops - hash
#
mega_million.keep_if{|date,mega_num| mega_num.even?}
puts "And now just the even Mega Million winners: #{mega_million}"
