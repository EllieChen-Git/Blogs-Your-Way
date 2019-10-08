class PostsController < ApplicationController
    def index
    end

    def new
        @post = Post.new      #calling Post model to create a new object
    end

    def create

    end
end
