require 'json'

class Menu

  attr_reader :menu

  def initialize(file = File.read("./hipstercoffee.json"))
    @menu = JSON.parse(file)
  end

  def display_menu
    @menu[0]["prices"][0].each { |key, value| puts "#{key}: #{value}" }
  end

end
