class RestaurantController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Reivew.new
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(params[:restaurant])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
