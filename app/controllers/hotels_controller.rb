class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @hotels = Hotel.near(params[:city],30)
  end

  def show
    @hotel = Hotel.find(params[:id])
    @markers =
      [{
        lat: @hotel.latitude,
        lng: @hotel.longitude,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to hotel_path(@hotel)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @hotel.update(hotel_params)
    redirect_to hotel_path(@hotel)
  end

  def destroy
    @hotel.destroy
    redirect_to hotels_path
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :address, :stars)
  end

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end
end
