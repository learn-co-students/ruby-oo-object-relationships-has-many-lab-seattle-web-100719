class Author
    attr_accessor :name
    
    @@authors = []

    def initialize(name)
        @name = name
        @posts = []
        @@authors << self
    end

    def posts
        Post.all.select do |post|
            post.author = self
        end
    end

    def add_post(post)
        post.author = self
        @posts << post
    end

    def add_post_by_title(title)
        @posts << Post.new(title, self)
    end

    def self.post_count        
        Post.all.size
    end
end