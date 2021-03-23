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
    def artists
        artist_found = []
        Song.all.each do | obj |
            if obj.genre.name == self.name
                artist_found << obj.artist
            end
        end
        artist_found.uniq
    end
    def self.all 
        @@all
    end
end
