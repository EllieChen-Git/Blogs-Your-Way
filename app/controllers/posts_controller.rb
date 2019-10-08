class PostsController < ApplicationController
    def index                #(1)
        @posts = Post.all.order("created_at DESC")   #6: display all the posts in desending order
    end

    def new
        @post = Post.new     #(2)calling Post model to create a new object
    end

    def create                        #(4)
        @post = Post.new(post_params)

        if @post.save                 #check if post is saved: yes, go to the post; no, go to new form
            redirect_to @post
        else
            render "new"
        end
    end

    def show                           #(5) find the post we created by its :id
        @post = Post.find(params[:id])
    end

    private            #(3)create private-post_params: coz we'll reuse post_params in other methods
                                   
    def post_params           
        params.require(:post).permit(:title, :content)  #require params from Post model, initialised them here,
    end                                                 #so we can submit them to server
end
