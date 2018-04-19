class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_hotel, only: [:show, :index, :new, :create]
  before_action :set_review, only:[:edit, :update, :destroy]
  def index
    @reviews = Review.all
  end

  def show
    authorize @review
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.hotel = @hotel
    if @review.save
      redirect_to hotel_path(@hotel)
    else
      render 'new'
    end
    authorize @review
  end

  def edit
    authorize @review
  end

  def update
    @review.update(review_params)
    redirect_to hotel_path(@hotel)
    authorize @review
  end

  def destroy
    @review.destroy
    redirect_to hotel_path
    authorize @review
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def set_review
    @review = Review.find(params[:review_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
