require 'pry'

class Food
    attr_accesor :name, :price
    # macro for setter and getter
    @@all = []

    def initialize(name, price)
        @name = name
        @price = price

        @@all << self
    end

    def self.all
        @@all
        # class method
    end

    def self.sorted
        @@all.sort_by { |food| food.price }
    end

    def remove
        @@all = @@all.reject { |f| f == self }
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