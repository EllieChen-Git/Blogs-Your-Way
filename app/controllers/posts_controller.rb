class PostsController < ApplicationController
    def index                #(1) index
        @posts = Post.all.order("created_at DESC")   #display all the posts in desending order
    end

    def new
        @post = Post.new     #(2)new: calling Post model to create a new object
    end

    def create                        #(4)create
        @post = Post.new(post_params)

        if @post.save                 #check if post is saved: yes, go to the post; no, go to new form
            redirect_to @post
        else
            render "new"
        end
    end

    def show                           #(5)show find the post we created by its :id
        @post = Post.find(params[:id])
    end

    def update                            #(6) update
        @post = Post.find(params[:id])
                                        #check if form is updated: yes, go to the post; no, go to edit form

        if @post.update(post_params)
            redirect_to @post
        else
            render "edit"
        end
    end

    def edit                               #(7) edit
        @post = Post.find(params[:id])
    end

    def destroy                            #(8) destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to posts_path
    end


    private            #(3)private - post_params: coz we'll reuse post_params in other methods
                                   
    def post_params           
        params.require(:post).permit(:title, :content)  #require params from Post model, initialised them here,
    end                                                 #so we can submit them to server
end
