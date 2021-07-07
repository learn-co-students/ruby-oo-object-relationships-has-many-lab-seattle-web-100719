class Song
    attr_accessor :name, :artist
    @@all=[]
    def initialize(name) 
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        @@all.each do |song| 
            if song.artist && song == self
                return song.artist.name
            else return nil
            end

            #     # if song.artist
            #     #     return song.artist.name
            #     # else return song.artist
            #     # end
            # end
        end 
    end
end
