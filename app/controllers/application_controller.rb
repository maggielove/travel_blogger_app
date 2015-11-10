class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # define current user based on who is logged in.
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method(:current_user)

  # If you are not the author of the post, you cannot edit or delete it.
  def authorize_strict
    redirect_to "/login" unless current_user.id.to_s === params[:user_id]
  end

  # If you are not logged in, you can only view posts.
  def authorize
    redirect_to "/login" unless current_user
  end

  protect_from_forgery with: :exception
end
