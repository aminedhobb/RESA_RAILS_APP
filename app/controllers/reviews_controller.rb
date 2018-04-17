class ReviewsController < ApplicationController
  def index
  end

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.hotel = Hotel.find(params[:hotel_id])
    @review.save
  end

  def update

  end

  def destroy

  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
