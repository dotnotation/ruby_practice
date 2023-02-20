# write a method called price_after_tip
# take in two args total and tip
# calculate total

require 'pry'
def price_after_tip(total, tip)
    additional = total * tip / 100
    total + additional
    binding.pry
end

puts price_after_tip(25, 20)

