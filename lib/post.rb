require 'pry'
class Post 
    attr_accessor :author
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title 
        @@all << self
    end

    def author_name
        # binding.pry
        if self.author
            self.author.name
        else 
            nil
        end
    end

    def self.all
        @@all
    end
end