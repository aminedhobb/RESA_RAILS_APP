class BookingsController < ApplicationController
  before_action :set_hotel, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @rooms = @hotel.rooms
    @booking = Booking.new
    @booking.arriving_date = cookies[:arriving_date]
    @booking.departing_date = cookies[:departing_date]
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      flash[:notice] = "Your booking is confirmed!"
      redirect_to bookings_path
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
    params.require(:booking).permit(:room_id)
  end

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def available_rooms
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = hotel.rooms
  end
end
