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
    @roster.sort_by { |k, v| v[name] }
    sorted = @roster.to_a
    legoo = sorted.each do  |grade, value|
      value.sort 
      
    end 
  
    legoo.to_h

  end
end
