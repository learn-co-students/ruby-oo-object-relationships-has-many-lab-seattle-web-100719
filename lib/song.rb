require 'pry'

class Song
    attr_accessor :title, :artist, :name
    @@all = []

    def initialize(title = "Say my name", artist = nil)
        @title = title
        @name = title
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if(@artist == nil)
            nil
        else
            @artist.name
        end
    end

end
