class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        #(10): run the command in terminal '$ rails g migration AddPostRefToComments post:references' (this should be the correct command, the one in the video wasn’t right) to create relationship between post_id in Post and Comments
        
        @comment = @post.comments.create(params[:comment].permit(:name, :comment))
        redirect_to post_path(@post)
        #(12)
    end

    def destroy  #(17)
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end

end


