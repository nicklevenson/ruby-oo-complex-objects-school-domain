# code here!
require 'pry'

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :name, :roster

    # def roster
    #     roster = {}
    # end

    def add_student(student, grade)
       if  @roster[grade]
        @roster[grade] << student
       else
        @roster[grade] = []
        @roster[grade] << student
       end
       
    end


    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
        
    end
        
end
