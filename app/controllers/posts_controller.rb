class PostsController < ApplicationController

  before_action :authorize, except: [:index, :show ]

  before_action :authorize_strict, except: [:index, :show, :new, :create]

  def index
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @comment = Comment.new
    @comment.post_id = @post.id
  end

  def new
    @user = current_user
    @post = @user.posts.new
    @post.byline = @user.byline_name
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    @post.byline = @user.byline_name
    @post.save

    redirect_to "/users/#{@user.id}/posts/#{@post.id}"
  end

  def edit
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @post.update(post_params)

    redirect_to "/users/#{@user.id}/posts/#{@post.id}"
  end

  def destroy
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @post.destroy

    redirect_to "/users/#{@user.id}"
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :byline, :image)
  end


end
