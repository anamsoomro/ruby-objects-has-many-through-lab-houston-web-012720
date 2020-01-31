class Song
    attr_accessor :name, :genre, :artist
    
    @@all = []

    #these are alwauys passsed objects 

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@all << self
    end

    def self.all 
        @@all
    end

end