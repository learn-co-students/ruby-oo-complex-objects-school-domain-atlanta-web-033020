require "pry"

class School
    #attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def roster
        @roster
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.each do |grade, list|
            list.sort!
            #binding.pry
        end
        @roster
    end

end
