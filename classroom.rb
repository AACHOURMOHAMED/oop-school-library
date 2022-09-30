require_relative 'students'

class ClassRoom < Student
  attr_accessor :label
  attr_reader :students

  has_many :students

  def initialize(label)
    @label = label
  end

  def add_student(student)
    @students = []
    @students.push(student)
    student.classroom = self
  end
end
