class CommentsController < ApplicationController


  def create
    binding.pry
    current_user
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.author = "Guest" unless current_user
    @comment.post_id = params[:post_id]
    @comment.post.user_id = params[:user_id]

    @comment.save

    redirect_to "/users/#{@user.id}/posts/#{@post.id}"
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :author)
  end
end
