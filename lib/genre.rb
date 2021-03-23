class Genre
    attr_reader :name, :song, :artist
    @@all = []
    def initialize(name)
        @name = name
        # @song = song , song, artist
        # @artist = artist
        @@all << self
    end
    def songs
        Song.all.select { |obj| obj.genre.name == self.name}
    end
    def self.all 
        @@all
    end
end
