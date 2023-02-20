require 'pry'

class Parent

    @@all = []

    def initialize(name)
        @name = name
        @children = []

        @@all << self
    end

    def have_child(child_name)
        @children << Child.new(child_name)
    end
end

class Child

    @@all = []
    
    def initialize(name)
        @name = name
        @dob = Time.now
        @allergies = []

        @@all << self 
    end
end

binding.pry 

Parent.new.have_child("Momo")