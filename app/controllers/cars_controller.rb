# frozen_string_literal: true

# Class for cars buttons
class CarsController < ApplicationController
  before_action :find_car, only: %i[show edit update destroy]

  def index
    @cars = Car.all
  end

  def show; end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car.becomes(Car), notice: 'Car was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @car.update(cars_path)
        format.html { redirect_to @car.becomes(Car), notice: 'Car was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private

  def find_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:type, :number, :current_train_id, :top_seats, :lower_seats,
                                :sitting_seats, :side_seats_top, :side_seats_bottom)
  end
end
