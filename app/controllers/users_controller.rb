class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end

  def new
    @post = Post.new
  end

end
