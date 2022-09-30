require_relative 'persons'

class Student < Person

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end


  def play_hook
    "¯\(ツ)/¯"
  end

  def classroom = (classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
