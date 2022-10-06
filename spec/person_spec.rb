require_relative '../persons'
describe Person do
  let(:person) { Person.new(20, 'John Doe') }

  describe '#new' do
    it 'creates a new person' do
      expect(person).to be_an_instance_of(Person)
    end

    it 'has an age' do
      expect(person.age).to eq(20)
    end

    it 'has a name' do
      expect(person.name).to eq('John Doe')
    end
  end
end
