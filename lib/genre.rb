class Genre
    attr_accessor :name, :name
    attr_writer :songs
    
    @@all = []

    def initialize(name)
        @name = name
        @songs
        @@all << self
    end

    def songs 
        Song.all.select {|song| song.genre == self}
    end

    def self.all 
        @@all
    end

    def artists 
        songs.map {|genre| genre.artist}
    end

end