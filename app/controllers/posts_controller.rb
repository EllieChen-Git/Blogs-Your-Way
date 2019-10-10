class PostsController < ApplicationController
    before_action :find_post, only: [:show, :update, :edit, :destroy] #(18)
    
    def index                                        #(1) index
        @posts = Post.all.order("created_at DESC")   #display all the posts in descending order
    end

    def new
        @post = Post.new              #(2)new: calling Post model to create a new object
    end

    def create                        #(4)create
        @post = Post.new(post_params)

        if @post.save                 #check if post is saved: yes, go to the post; no, go to new form
            redirect_to @post
        else
            render "new"
        end
    end

    def show                          #(5)show find the post we created by its :id
    end

    def update                        #(6) update
        if @post.update(post_params)  #check if form is updated: yes, go to the post; no, go to edit form
            redirect_to @post
        else
            render "edit"
        end
    end

    def edit                           #(7) edit
    end

    def destroy                        #(8) destroy
        @post.destroy

        redirect_to posts_path
    end


    private                      #(3)private - post_params: coz we'll reuse post_params in other methods
                                   
    def post_params           
        params.require(:post).permit(:title, :content)  #require params from Post model, initialised them here,
    end                                                 #so we can submit them to server

    def find_post                #(18): remove repetition on show, update, edit, destroy methods
        @post = Post.find(params[:id])
    end
end

