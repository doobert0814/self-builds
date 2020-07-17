require 'pry'

class Theater

    attr_accessor :complex_name, :location

    @@all = []
        
    def initialize(complex_name, location)
        @complex_name=complex_name
        @location=location
        @movies = []

        @@all << self

    end

    def self.all
        @@all
    end

    def add_movie(movie)
        @movies << movie
        movie.theater = self
    end
end

#amc = Theater.new("AMC Pacific place", "600 Pine Street")

#binding.pry