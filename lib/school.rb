# code here!
require 'pry'

class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] = [] if @roster[grade] == nil
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        return_hash = {}
        @roster.keys.each do |grade|
            return_hash[grade] = @roster[grade].sort
        end
        return_hash 
    end

end