class CarsController < ApplicationController
  before_filter :load_car, :only => [:destroy]

  def show
    @cars = current_user.cars
  end

  def create
    @car = current_user.cars.create!(params[:car])
  end

  def destroy
    @car.destroy
    redirect_to root_path, :flash => { :success => "Car deleted!" }
  end

  def new_car
    @title = "Calculator"
    @car = current_user.cars.create!(params[:car])
  end

  def existing_car
    @title = "Calculator"
    load_car
  end

private
  def load_car
    @car = current_user.cars.find(params[:id])
  end

end
