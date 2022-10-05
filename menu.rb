require_relative 'app'
require_relative 'preverse_data'
require_relative 'menumessage'

MENU = MenuMessage.new

APP = App.new

DATA = PreverseData.new

class Menu
  DATA.load_books
  DATA.load_people
  DATA.load_rentals
  def display_menu # rubocop:disable Metrics/CyclomaticComplexity
    MENU.menu_message
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
      DATA.save_data
      exit
    else puts 'Invalid option' end
    display_menu
  end
end

main = Menu.new
main.display_menu
