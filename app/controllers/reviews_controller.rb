class ReviewsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.hotel = @hotel
    if @review.save
      redirect_to hotel_path(@hotel)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to hotel_path(@hotel)
  end

  def destroy
    @review.destroy
    redirect_to hotel_path
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
