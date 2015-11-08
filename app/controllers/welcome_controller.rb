class WelcomeController < ApplicationController
  def index
    @cities = City.all
    @users = User.all
  end

end
