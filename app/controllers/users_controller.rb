class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end

  def new
    #@post = Post.new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to "/users/#{user.id}"
    else
      redirect_to 'users/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :password_confirmation,
      :byline_name,
      :bio,
      :image
    )
  end

end
