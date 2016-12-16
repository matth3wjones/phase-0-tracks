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

p hollywood_actresses
p hollywood_actors

#array .each code
hollywood_actors.each { |x| puts "This is #{x.upcase}"}

p hollywood_actors

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

#method iterates and deletes certain condition - array
def delete_tom

end

#method iterates and deletes certain condition - hash
#


#method iterates and deletes certain condition - array
#


#method filters data for only certain condition - hash
#


#method filters data for only certain condition - array
#


#different method filters for only certain conditions - hash
#


#different method filters for only certain conditions - array
#


#method remove items until condition is false, then stops - hash
#


#method remove items until condition is false, then stops - array
#

