class RoomsController < ApplicationController

skip_before_action :authenticate_user!, only: [:index, :show]
before_action :set_hotel only: [:index, :show, :new, :create]
before_action :set_room only: [:edit, :update, :destroy,]

  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create!(room_params)
    @room.hotel = @hotel
    if @room.save
      link_to hotel_path(@hotel), notice: 'Room was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @room.hotel.update(room_params)
    redirect_to hotel_path(@hotel), notice: 'Room was successfully upddated.'
  end

  def destroy
    @room.hotel.destroy
    redirect_to hotel_path(@hotel), notice: 'Room was successfully destroyed.'
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def set_room
    @room = Room.find([params[:room_id])
  end

  def room_params
    params.require(:room).permit(:status, :price, :capacity, :category, :photos)
  end
end
