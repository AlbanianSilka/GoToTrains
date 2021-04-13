# frozen_string_literal: true

# Class to declare the route
class Route < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :trains_routes
  has_many :trains, through: :trains_routes
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  before_validation :set_name

  private

  def set_name
    self.name = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end
end
