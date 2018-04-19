class BookingsController < ApplicationController
  before_action :set_hotel, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @rooms = @hotel.rooms
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to hotel_path(@hotel)
    else
      render :new
    end
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to hotel_path(@hotel)
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:arriving_date, :departing_date, :room_id)
  end

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end


  def available_rooms
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = hotel.rooms
  end
end
