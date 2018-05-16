class RestaurantsController < ApplicationController
  def edit

  end

  def update

  end

  def destroy

  end

  def find
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:id, :content, :rating, :restaurant_id)
  end
end
