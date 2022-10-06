require_relative '../teachers'
describe Teacher do
  let(:teacher) { Teacher.new(20, 'John Doe') }

  describe '#new' do
    it 'creates a new teacher' do
      expect(teacher).to be_an_instance_of(Teacher)
    end

    it 'has an age' do
      expect(teacher.age).to eq(20)
    end

    it 'has a name' do
      expect(teacher.name).to eq('Unknown')
    end
  end
end
