# frozen_string_literal: true

# Class to declare the route
class Route < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :trains_routes
  has_many :trains, through: :trains_routes
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  before_validation :set_name

  scope :with_station, ->(station) { Route.joins(:railway_stations).where('railway_stations.id = ?', station.id) }

  def first_station
    railway_stations.first
  end

  def last_station
    railway_stations.last
  end

  def self.searched_routes(start_station, end_station)
    Route.with_station(start_station) &
      Route.with_station(end_station)
  end

  private

  def set_name
    self.name = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end
end
