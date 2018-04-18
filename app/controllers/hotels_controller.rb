class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:city].present?
        @hotels = Hotel.near(params[:city],50)
      else
        @hotels = Hotel.all
    end
  end


  def show
    @hotel = Hotel.find(params[:id])


    @markers =
      [{
        lat: @hotel.latitude,
        lng: @hotel.longitude,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]
    authorize @hotel
  end

  def new
    @hotel = Hotel.new
    authorize @hotel
  end

  def create
    @hotel = Hotel.new(hotel_params)
    @hotel.user = current_user
    if @hotel.save
      redirect_to hotel_path(@hotel)
    else
      render :new
    end
    authorize @hotel
  end

  def edit
    authorize @hotel
  end

  def update
    @hotel.update(hotel_params)
    redirect_to hotel_path(@hotel)
    authorize @hotel
  end

  def destroy
    @hotel.destroy
    redirect_to hotels_path
  end

  private

  def check_bookings
    if params[:departing_date]
     @bookings = Booking.where("arriving_date >= ? AND departing_date <= ?")
    }

  def hotel_params
    params.require(:hotel).permit(:name, :address, :stars)
  end

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end
end
