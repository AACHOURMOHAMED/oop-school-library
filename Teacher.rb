require_relative 'Person'

class Teacher
  def initialize(age, name: 'Unkown', parent_permission: true)
    super(@age, @name, @parent_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
