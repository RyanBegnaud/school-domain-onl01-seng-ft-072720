# code here!
require "pry"
class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def roster 
    @roster 
  end
  
  def add_student(name, grade)
    @student_name = name
    @student_grade = grade 
  if @roster[grade] == nil 
    @roster[grade] = []
    @roster[grade] << name 
  else
    @roster[grade] << name 
    
    end
  end 
  
  def grade(grade)
    return @roster[grade]
  end

  def sort
   
     sorted = @roster.each do |grade, students_array|
        students_array.map do |student1, student2|
          student1 <=> student2
          binding.pry
      
      
    end 
    binding.pry
    sorted.to_h

  end
end
