class BookingsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :destroy, :create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room = @room
    @booking.save
  end

  def destroy
    @booking = Booking.find(booking_params)
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:arriving_date, :departing_date)
  end

end
