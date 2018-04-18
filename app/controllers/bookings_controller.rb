class BookingsController < ApplicationController
  before_action :set_hotel, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @rooms = @hotel.rooms

    @booking = Booking.new
  end

  def create
    @room = Room.find_by(category: category_params, status: false)
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room = @room
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:hotel_id).permit(:arriving_date, :departing_date)
  end

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def available_rooms
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = hotel.rooms


end
