require_relative 'students'
require_relative 'teachers'
require_relative 'book'
require_relative 'rental'
require_relative 'classroom'
require_relative 'app'
# import json file
require 'json'

APP = App.new

class PreverseData
  attr_accessor :rentals, :books, :people, :classrooms

  def initialize
    @rentals = APP.rentals
    @books = APP.books
    @people = APP.people
    @classrooms = APP.classrooms
  end

  # if files exist
  def file_exist?(filename)
    File.exist? filename
  end

  # save books and people and rentals in json files
  def save_data
    books = @books.map { |book| { title: book.title, author: book.author } }
    File.write('data/books.json', JSON.pretty_generate(books))
    rentals = @rentals.map do |rental|
      { date: rental.date, book: @books.find_index(rental.book), person: @people.find_index(rental.person) }
    end
    File.write('data/rentals.json', JSON.pretty_generate(rentals))
    people = @people.map { |person| { name: person.name, age: person.age, type: person.class } }
    File.write('data/people.json', JSON.pretty_generate(people))
  end

  # load books from json file
  def load_books
    if file_exist?('data/books.json')
      books = JSON.parse(File.read('data/books.json'))
      books.each do |book|
        @books << Book.new(book['title'], book['author'])
      end
    else
      puts 'books.json file does not exist'
    end
  end

  # # load people from json file
  def load_people
    path = 'data/people.json'
    if file_exist?(path)
      people = JSON.parse(File.read('data/people.json'))
      people.each do |person|
        case person['type']
        when 'Student'
          @people << Student.new(person['age'], person['classroom'], person['name'],
                                 parent_permission: person['parent_permission'])
        when 'Teacher'
          @people << Teacher.new(person['age'], person['specialization'], person['name'])
        end
      end
    else
      puts 'people.json file does not exist'
    end
  end

  # load rentals from json file
  def load_rentals
    path = 'data/rentals.json'
    if file_exist?(path)
      rentals = JSON.parse(File.read('data/rentals.json'))
      rentals.each do |rental|
        @rentals << Rental.new(rental['date'], @books[rental['book']], @people[rental['person']])
      end
    else
      puts 'rentals.json file does not exist'
    end
  end
end
