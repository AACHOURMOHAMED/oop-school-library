class ClassRoom
  attr_accessor :label

  def initialize(label)
    super()
    @label = label
  end

  def add_student(student)
    @students = []
    @students << student
    student.classroom = self
  end
end
