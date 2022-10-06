require_relative '../persons'
require_relative '../capitalize_decorator'
require_relative '../trimmer_decorator'

describe Person do
  let(:person) do
    Person.new(20, 'john doe')
  end
  let(:capitalized) do
    CapitalizeDecorator.new(person).correct_name
  end
  let(:trimmed) do
    TrimmerDecorator.new(person).correct_name
  end

  describe '#Capitalize' do
    it 'Capitalize persons name' do
      expect(capitalized).to eq('John doe')
    end
  end

  describe '#Trimmed' do
    it 'Trim persons name' do
      expect(capitalized).to eq(capitalized[0..9])
    end
  end
end
