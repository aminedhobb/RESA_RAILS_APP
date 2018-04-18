class RoomAttachmentsController < ApplicationController
  before_action :set_room_attach, only: [:edit,:update,:destroy]
  skip_after_action :verify_authorized

  def edit
    authorize @room_attachment
  end

  def update
    @room_attachment.update(room_params)
    redirect_to @room_attachment.hotel
    authorize @room_attachment
   end

  def destroy
    @room_attachment.destroy
    redirect_to hotel_path(@hotel)
    authorize @room_attachment
  end

  private

  def hotel_params
    params.require(:room_attachment).permit(:room_id, :photo)
  end

  def set_hotel_attach
    @room_attachment = RoomAttachment.find(params[:id])

  end
end
