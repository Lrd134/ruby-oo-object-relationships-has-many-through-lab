class Artist
    attr_reader :name, :song, :genre
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select { | obj | obj.artist.name == self.name }
    end
    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    def genres
        genres_found = []
        Song.all.each do | obj |
            if obj.artist.name == self.name
                genres_found << obj.genre
            end
        end
        genres_found
    end
    def self.all
        @@all
    end
end
