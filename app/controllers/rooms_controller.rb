class RoomsController < ApplicationController

skip_before_action :authenticate_user!, only: [:show]
before_action :set_hotel, only: [:index, :new, :create]
before_action :set_room, only: [:edit, :update, :destroy]
skip_after_action :verify_authorized

  def index
    @rooms = Room.where(hotel: @hotel)
  end

  def show
    @room_attachments = @room.room_attachments.all
    authorize @room
  end

  def new
    @room = Room.new
    @room_attachment = @room.room_attachments.build
    authorize @room
  end

  def create
    @room = Room.new(room_params)
    @room.hotel = @hotel
    if @room.save
      if params[:room_attachments] != nil
      params[:room_attachments]['photo'].each do |a|
        @room_attachment = @room.room_attachments.create!(:photo => a)
      end
      redirect_to hotel_path(@hotel)
    else
      redirect_to hotel_path(@hotel)
    end
    else
      render :new
    end
    authorize @room
  end

  def edit
    authorize @room
  end

  def update
    @hotel =  @room.hotel
    @room.update(room_params)
    redirect_to hotel_path(@hotel), notice: 'Room was successfully updated.'
    authorize @room
  end

  def destroy
    @hotel =  @room.hotel
    @room.hotel.destroy
    redirect_to hotel_path(@hotel), notice: 'Room was successfully destroyed.'
    authorize @room
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:price, :capacity, :category, room_attachments_attributes: [:id, :room_id, :photo])
  end
end
