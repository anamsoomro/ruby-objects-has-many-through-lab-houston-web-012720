class Artist
    attr_accessor :name 
    attr_writer :songs, :genres
    
    @@all = []

    def initialize(name)
        @name = name
        @genres = []
        @songs = []
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        @genres = songs.map {|song| song.genre}
    end

    def new_song (name, genre)
        Song.new(name, self, genre)
    end

    def self.all 
        @@all
    end
end