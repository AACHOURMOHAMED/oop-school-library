class Person
  attr_accessor :id, :age, :name

  def initialize(id, age, name: 'Unkown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  # getters for @id @name @age

  def id
    @id
  end

  def age
    @age
  end

  def name
    @name
  end

  # setters for @id @name @age

  def id=(id)
    @id = id
  end

  def age=(age)
    @age = age
  end

  def name=(name)
    @name = name
  end

  # private method

  private

  def is_of_age
    @age >= 18
  end

  # public methods

  def can_use_services
    is_of_age || @parent_permission
  end
end
