class Movie
    attr_accessor :title, :showtime

    @@all = []

    def initialize(title, showtime)
        @title = title
        @showtime = showtime
        @@all << self
    end
end