require 'pry'

class Food
    attr_accesor :name, :price
    # macro for setter and getter
    def initialize(name, price)
        @name = name
        @price = price
    end

    # def name=(name)
    #     @name = name
    #     # setter
    # end

    # def name
    #     @name 
    #     # getter
    # end
end

item = Food.new

binding.pry