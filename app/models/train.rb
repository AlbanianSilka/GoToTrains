# frozen_string_literal: true

# Model for a train and his validation
class Train < ActiveRecord::Base
  validates :number, presence: true, uniqueness: true
  has_many :cars
  has_many :tickets
  has_one :trains_route
  has_one :route, through: :trains_route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id, optional: true

  has_many :cars, ->(train) { order("number #{train.direction ? 'ASC' : 'DESC'}") }

  scope :get_number_of_seats, ->(car_type, seats_type) { cars.where(type: car_type).sum(seats_type) }
end
