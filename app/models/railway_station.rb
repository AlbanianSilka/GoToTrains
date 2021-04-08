# frozen_string_literal: true

# Declaration of Railway Station class and its validation
class RailwayStation < ActiveRecord::Base
  validates :title, presence: true

  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
end
