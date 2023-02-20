require 'pry'

class Parent

    attr_reader :children

    @@all = []

    def initialize(name)
        @name = name
        @children = []

        @@all << self
    end

    def have_child(child_name)
        @children << Child.new(child_name)
    end

    def find_child_by_name(child_name)
        @children.find do |child|
            child_name == child.name
        end
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