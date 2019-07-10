class RestaurantsController < ApplicationController
  # It's the convention that name of the file should be plural.
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    # because the user will type a new restaurant and it will be in our database
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    # we need to private params.require to permit those parmas save in model.
  end

  def set_params
    @restaurant = Restaurant.find(params[:id])
  end
end
