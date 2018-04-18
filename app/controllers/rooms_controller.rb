class RoomsController < ApplicationController

skip_before_action :authenticate_user!, only: [:show]
before_action :set_hotel, only: [:new, :create]
before_action :set_room, only: [:edit, :update, :destroy]

  def show
    authorize @room
  end

  def new
    @room = Room.new
    authorize @room
  end

  def create
    @room = Room.new(room_params)
    @room.hotel = @hotel
    if @room.save
      redirect_to hotel_path(@hotel), notice: 'Room was successfully created.'
    else
      render :new
    end
    authorize @room
  end

  def edit
    authorize @room
  end

  def update
    @room.hotel.update(room_params)
    redirect_to hotel_path(@hotel), notice: 'Room was successfully upddated.'
    authorize @room
  end

  def destroy
    @room.hotel.destroy
    redirect_to hotel_path(@hotel), notice: 'Room was successfully destroyed.'
    authorize @room
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def set_room
    @room = Room.find(params[:room_id])
  end

  def room_params
    params.require(:room).permit(:price, :capacity, :category, :photos)
  end
end
