class RoomsController < ApplicationController

skip_before_action :authenticate_user!, only: [:index, :show]
before_action :set_hotel, only: [:index, :show, :new, :create]
before_action :set_room, only: [:edit, :update, :destroy]

  def index
    @rooms = Room.all
  end

  def show
    @room_attachments = @room.room_attachments.all
  end

  def new
    @room = Room.new
    @room_attachment = @room.room_attachments.build
  end

  def create
    @room = Room.create!(room_params)
    @room.hotel = @hotel
    if @room.save
      params[:room_attachments]['photo'].each do |a|
      @room_attachment = @room.room_attachments.create!(:photo => a)
      end
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
    @room = Room.find(params[:room_id])
  end

  def room_params
    params.require(:room).permit(:status, :price, :capacity, :category, post_attachments_attributes: [:id, :room_id, :photo])
  end
end
