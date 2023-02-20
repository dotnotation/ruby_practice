require 'pry'

class Food
    def initialize(name, price)
        @name = name
        @price = price
    end

    def name=(name)
        @name = name
        # setter
    end

    def name
        @name 
        # getter
    end
end

item = Food.new

binding.pry