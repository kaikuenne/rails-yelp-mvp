class ReviewsController < ApplicationController
  def edit

  end

  def update

  end

  def destroy

  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def restaurant_params
    params.require(:review).permit(:id, )
  end
end
