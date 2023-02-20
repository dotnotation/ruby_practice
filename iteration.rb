array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

array.each do |number|
    puts number * 2
end
# returns the original array

array.collect do |n|
    n * 2
end
# will return a new array and is non destructive 

names = ["Momo", "Judy", "Chyna", "Michael"]

names.find do |name|
    name == "Momo"
end
# will return first true item and stops running 

numbers = [1, 2, 2, 3, 4, 5, 66, 7, 8]
numbers.select do |n|
    n.even?
end
# will find ALL elements that return true

names.select do |name|
    name != "Momo"
end

names.reject do |name|
    name == "Momo"
end
# the above two methods would produce the same results

numbers.sort

numbers.sort { |n, n2| n2 <=> n }

objs = [{name: "Momo"}, {name: "Chyna"}]
objs.sort_by { |hash| hash.name }


