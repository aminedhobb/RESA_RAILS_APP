class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def show
    @city = City.find(params[:id])
    authorize @city
  end
end
