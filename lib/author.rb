require "pry"
require_relative "../lib/post.rb"
class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.all
        @@all
    end

    def self.post_count
        Post.all.select do |post|
            self.all.include?(post.author)
        end.length
    end
end
# betty = Author.new("Betty")
# hello_world = Post.new("Hello World")
# betty.add_post(hello_world)
# betty.add_post_by_title("My Great Blog Post")



