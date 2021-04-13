# frozen_string_literal: true

# Declaration of Railway Station class and its validation
class RailwayStation < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  scope :ordered, lambda {
    select('railway_stations.*, railway_stations_routes.number')
      .joins(:railway_stations_routes)
      .order('railway_stations_routes.number').uniq
  }

  def update_position(route, index)
    st_route = station_route(route)
    st_route&.update(number: index)
  end

  def index(route)
    station_route(route)&.number
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
