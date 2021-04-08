# frozen_string_literal: true

# Class to declare the route
class Route < ActiveRecord::Base
  validates :name, presence: true
  has_many :trains_routes
  has_many :trains, through: :trains_routes
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
end
