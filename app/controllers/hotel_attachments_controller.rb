class HotelAttachmentsController < ApplicationController
  before_action :set_hotel_attach, only: [:edit,:update,:destroy]
  skip_after_action :verify_authorized

  def edit
    authorize @hotel_attachment
  end

  def update
    @hotel_attachment.update(hotel_params)
    redirect_to @hotel_attachment.hotel
    authorize @hotel_attachment
   end

  def destroy
    @hotel_attachment.destroy
    redirect_to hotel_path(@hotel)
    authorize @hotel_attachment
  end

  private

  def hotel_params
    params.require(:hotel_attachment).permit(:hotel_id, :photo)
  end

  def set_hotel_attach
    @hotel_attachment = HotelAttachment.find(params[:id])
  end
end
