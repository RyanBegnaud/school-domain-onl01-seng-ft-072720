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
    sorted = @roster.to_a
    sorted[0].sort
    binding.pry
    legoo = sorted.each do  |grade, value|
      value[0] <=> value[1] 
      
    end 
  
    legoo.to_h

  end
end
