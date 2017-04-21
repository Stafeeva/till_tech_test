require 'json'

file = File.read("./hipstercoffee.json")

menu = JSON.parse(file)

puts menu
