class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:index, :new, :create]

  def index
    @reviews = Review.where(restaurant_id: @restaurant.id)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.valid?
      @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:id, :content, :rating, :restaurant_id)
  end
end
