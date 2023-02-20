# arrays are ordered lists of elements
# can include numbers, strings, other arrays, etc. 
# can find by index
require 'pry'
array_one = ["Hello", "World"]
array_two = Array.new(3, "")
# put size (which is required) and type ^

array_one.push("!")
array_one.append("appended")
array_one << "shoveled"
binding.pry