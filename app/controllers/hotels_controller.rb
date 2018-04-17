class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show,:edit,:update,:destroy]
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @room = Room.new
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
    redirect_to hotel_path
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :address, :stars, :city_id)
  end

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end
end
