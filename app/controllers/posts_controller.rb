class PostsController < ApplicationController

  include PostsHelper

  def index
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
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
  end

end
