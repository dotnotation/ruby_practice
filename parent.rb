require 'pry'

class Parent
    def initialize(name)
        @name = name
        @children = []
    end

    def have_child(child_name)
        @children << Child.new(child_name)
    end
end

class Child
    def initialize(name)
        @name = name
        @dob = Time.now
        @allergies = []
    end
end

binding.pry 

Parent.new.have_child("Momo")