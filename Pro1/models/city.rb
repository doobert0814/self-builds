require 'pry'

class City

    attr_accessor :name, :state

    @@all = []

    def initialize(name, state)
        @name = name
        @state = state
        @theaters = []

        @@all << self
        
    end

    def self.all
        @@all
    end


    def add_theater(name)
        theater = Theater.new(name, self)
        @theaters << self
    end

    def theater
        Theater.all.select {|theater| theater.city == self}
    end
end

#seattle = City.new("Seattle", "Washington")

#binding.pry