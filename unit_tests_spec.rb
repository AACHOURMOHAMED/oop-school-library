require_relative 'book'
require_relative 'persons'
require_relative 'students'
require_relative 'teachers'
require_relative 'classroom'
require_relative 'rental'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

describe Book do
  let(:book) { Book.new('The Great Gatsby', 'F. Scott Fitzgerald') }

  describe '#new' do
    it 'creates a new book' do
      expect(book).to be_an_instance_of(Book)
    end

    it 'has a title' do
      expect(book.title).to eq('The Great Gatsby')
    end

    it 'has an author' do
      expect(book.author).to eq('F. Scott Fitzgerald')
    end
  end
end

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

describe ClassRoom do
  let(:classroom) { ClassRoom.new('Math') }

  describe '#new' do
    it 'creates a new classroom' do
      expect(classroom).to be_an_instance_of(ClassRoom)
    end
  end
end

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
