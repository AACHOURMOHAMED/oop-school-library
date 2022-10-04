require_relative 'menu'

class Main
  def initialize
    @menu = Menu.new
  end

  def run
    @menu.display_menu
  end
end

main = Main.new
main.run
