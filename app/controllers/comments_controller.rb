class CommentsController < ApplicationController


  def new
    @user = current_user
  end

  def create

    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    #current_user.image = ("#{current_user.image}")
    #current_user ? (@comment.image = current_user.image) : (@comment.image)
    #@comment.image = current_user.image if current_user
    #If there is a current user, set author to current user. Otherwise, author is "Guest"
    current_user ? (@comment.author = "@#{current_user.username}") : (@comment.author = "Guest")
    @comment.post_id = params[:post_id]
    @comment.post.user_id = params[:user_id]

    @comment.save

    redirect_to "/users/#{@user.id}/posts/#{@post.id}"
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :author, :image)
  end
end
