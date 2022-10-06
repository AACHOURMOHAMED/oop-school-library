require_relative '../book'

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
