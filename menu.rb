require_relative 'app'

APP = App.new

class Menu
  APP.load_data
  def menu_message
    puts '____________________________________________________________'
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def display_menu # rubocop:disable Metrics/CyclomaticComplexity
    menu_message
    option = gets.chomp.to_i
    case option
    when 1
      APP.list_books
    when 2
      APP.list_people
    when 3
      APP.create_person
    when 4
      APP.create_book
    when 5
      APP.create_rental
    when 6
      APP.list_rentals_by_person_id
    when 7
      puts 'Thank you for using this app!'
      APP.save_data
      exit
    else puts 'Invalid option' end
    display_menu
  end
end

main = Menu.new
main.display_menu