# frozen_string_literal: true

# Class for cars buttons
module Admin
  class CarsController < Admin::BaseController
    before_action :find_car, only: %i[show edit update destroy]

    def index
      @cars = Car.all
    end

    def show; end

    def new
      @car = Car.new
      @train = Train.find(params[:train_id])
    end

    def create
      @car = Car.new(car_params)

      respond_to do |format|
        if @car.save
          format.html { redirect_to admin_car_url(@car), notice: 'Car was successfully created.' }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end

    def edit; end

    def update
      respond_to do |format|
        if @car.update(car_params)
          format.html { redirect_to admin_car_url(@car), notice: 'Car was successfully updated.' }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @car.destroy
      respond_to do |format|
        format.html { redirect_to admin_train_cars_url, notice: 'Car was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def find_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:number, :train_id, :top_seats, :lower_seats,
                                  :sitting_seats, :side_seats_top, :side_seats_bottom, :type)
    end
  end
end
