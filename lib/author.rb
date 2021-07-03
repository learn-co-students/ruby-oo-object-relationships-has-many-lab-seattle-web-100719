class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def add_post(post)
        post.author = self
        @@all << post
    end

    def posts
        Post.all.filter do |post|
            post.author == self
        end
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        @@all.length
    end

    def self.all
        @@all
    end

end
