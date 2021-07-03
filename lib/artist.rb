require 'pry'

class Artist
    attr_accessor :name

    @@all = []
   
    def initialize(name)
      @name = name
    end

    def add_song(song)
        song.artist = self
        @@all << song
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        @@all.length
    end
    
    def songs
        Song.all.filter do |song|
            song.artist == self
        end
    end

end

