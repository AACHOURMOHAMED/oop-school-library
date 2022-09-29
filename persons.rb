require_relative 'nameable'

class Person < NameAble
  attr_reader :name, :age

  def initialize(age, name)
    super()
    @age = age
    @name = name
  end

  def correct_name
    @name
  end
end
