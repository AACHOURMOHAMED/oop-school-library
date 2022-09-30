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

  def add_rental(book, date)
    rental = Rental.new(date, book, self)
    @rentals.push(rental)
  end
end
