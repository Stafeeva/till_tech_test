require 'json'

class Menu

  attr_reader :menu

  def initialize(file = File.read("./hipstercoffee.json"))
    @menu = JSON.parse(file)
  end

end
