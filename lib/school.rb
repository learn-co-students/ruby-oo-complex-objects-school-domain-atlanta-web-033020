# code here!

require 'pry'

class School

    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}

    end

    # should return a hash: key grade points to array of students
    def add_student(student_name, grade)

        # IF theres is no grade key, create a grade key pointing to an empty array
        # then shovel the student's name into the empty array
        # ELSE shovel the student's name into the appropriate grade level
        if !@roster[grade]
            @roster[grade] = []
            @roster[grade] << student_name
        else           
            @roster[grade] << student_name
        end
    end


    def grade(grade)
        @roster[grade]
    end


    def sort
        # https://www.youtube.com/watch?v=I4TD-eCWUWQ

        # Iteration needs both the grade & names: Why??
        # Sort needed the exclamation to return the original but sorted
        @roster.each do |grade, names|
            @roster[grade].sort!
        end

# binding.pry
      #  @roster[grade].sort { |a, b| a <=> b }

        # @roster.sort
    end


end






