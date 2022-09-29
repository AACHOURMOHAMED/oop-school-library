require_relative 'Person'
class Student < Person
  # constructor extends parnet's constructor by adding @classroom and a parameter for it
  def initialize(age, classroom, name = 'Unkown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hook
    "¯\(ツ)/¯"
  end
end
