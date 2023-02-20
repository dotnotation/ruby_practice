# arrays are ordered lists of elements
# can include numbers, strings, other arrays, etc. 
# can find by index
require 'pry'
array_one = ["Hello", "World"]
array_two = Array.new(3, "")
# put size (which is required) and type ^

# destructive methods
array_one.push("!")
array_one.append("appended")
array_one << "shoveled"
array_one.insert(0, "inserted")
array_one.unshift("unshifted")
array_one.pop
array_one.shift
array_one.slice(2, 4)
# index you want to start at, and then the number of items
# slice is non destructive

# array methods
array.length
array.size
array.count
array.include?(4)
# will return a boolean 
array.join(" ")
string = "hello"
string.split("")
string_two = "hi, hello, world"
string_two.split(",")
# join and split are non destructive

binding.pry