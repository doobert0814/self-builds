    require 'pry'

    class Bird

        attr_reader :breed  
        attr_accessor :name  
        
        @@all = []

        def initialize(name, breed)
            @name = name
            @breed= breed
            @@all << self
        end

        def self.all
            @@all
        end

        def self.breed
            @breed.each {|bb|bb.breed == "Yellow Canary"}
        end

        def shout
            name.upcase!
        end
    end


tweety=Bird.new("tweety", "Yellow Canary")
woody=Bird.new("Woody Woodpecker", "Woodpecker")
road=Bird.new("Road Runner", "Road Runner")

binding.pry