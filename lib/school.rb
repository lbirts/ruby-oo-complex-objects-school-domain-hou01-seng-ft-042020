# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :name, :roster
    def add_student(student_name, grade)
        # if @roster.key?(grade) == true
        #     @roster[grade] << student_name
        # elsif @roster.key?(grade) == false
        #     @roster[grade] = []
        #     @roster[grade] << student_name
        # end
        roster[grade] ||= []
        roster[grade] << student_name
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
    end
end