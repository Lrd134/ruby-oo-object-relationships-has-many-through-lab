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
        Song.all.collect do |arr | 
            if arr.artist.name == self.name
                return arr.genre
            end
        end

    end
    def self.all
        @@all
    end
end
