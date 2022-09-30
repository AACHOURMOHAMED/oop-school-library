require_relative 'nameable'

class Person < NameAble
  attr_reader :name, :age

  def initialize(age, name)
    super()
    @age = age
    @name = name
    @rentals = []
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals << rental
  end
end
