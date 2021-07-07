require 'pry'

class Artist
    attr_accessor :name
    attr_writer :songs
    @@artists = []

    def initialize(name = "Beyonce")
        @name = name
        @songs = []
        @@artists << self
    end

    def songs
        Song.all.select do |song|
            song.artist = self
        end
    end

    def self.all
        @@artists
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(name)
        @songs << Song.new(name, self)
    end

    def self.song_count        
            Song.all.size
    end
end

