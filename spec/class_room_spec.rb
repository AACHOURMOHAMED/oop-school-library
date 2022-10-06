require_relative '../classroom'
describe ClassRoom do
  let(:classroom) { ClassRoom.new('Math') }

  describe '#new' do
    it 'creates a new classroom' do
      expect(classroom).to be_an_instance_of(ClassRoom)
    end
  end
end
