# code here!
class School 
    attr_reader :name 
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(student_name, grade)
        if !@roster[grade]
            @roster[grade] = [student_name]
        else 
            @roster[grade] << student_name
        end
    end

    def grade(desired_grade)
        @roster[desired_grade]

    end

    def sort
      #  @roster.sort_by {|grades, names| grades[student_name]}
        @roster.map {|k, v|
    v.sort!}
    @roster
    end



end