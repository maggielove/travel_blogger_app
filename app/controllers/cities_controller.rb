class CitiesController < ApplicationController
  def create
  end

  private

  def city_params
    params.require(:city).permit(:name)
  end
end
