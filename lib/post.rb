class Post
    attr_accessor :title, :author
    @@all = []

    def initialize(title = "Hello World", author = nil)
        @title = title
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if(@author == nil)
            nil
        else
            @author.name
        end
    end


end