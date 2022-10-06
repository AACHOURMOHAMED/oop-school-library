require_relative '../rental'

describe Rental do
  let(:rental) do
    Rental.new('2021-21-12', Book.new('The Great Gatsby', 'F. Scott Fitzgerald'), Person.new(20, 'John Doe'))
  end

  describe '#new' do
    it 'creates a new rental' do
      expect(rental).to be_an_instance_of(Rental)
    end
  end
end
