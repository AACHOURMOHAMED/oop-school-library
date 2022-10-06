require_relative '../students'
describe Student do
  let(:student) { Student.new(20, 'John Doe') }

  describe '#new' do
    it 'creates a new student' do
      expect(student).to be_an_instance_of(Student)
    end

    it 'has an age' do
      expect(student.age).to eq(20)
    end

    it 'has a name' do
      expect(student.name).to eq('Unknown')
    end
  end
end
