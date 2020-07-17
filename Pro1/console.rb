require 'bundler'

Bundler.require

require_relative 'models/city'
require_relative 'models/theater'
require_relative 'models/movies'


seattle = City.new("Seattle", "Washington")


regal = Theater.new("Regal Meridian", "1501 7th ave.")

screen1 = Movie.new("Spider-man", "9:00")

binding.pry