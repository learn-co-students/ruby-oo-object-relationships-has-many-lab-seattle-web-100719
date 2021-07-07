class Post
    attr_accessor :title, :author
    @@all=[]
    def initialize(title) 
        @title=title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        @@all.each do |post| 
            if post.author && post == self
                return post.author.name
            else return nil
            end
        end 
    end
end
