# frozen_string_literal: true

class RailwayStationsRoute < ActiveRecord::Base
  belongs_to :railway_station
  belongs_to :route

  validates :railway_station_id, uniqueness: { scope: :route_id }
  after_validation :number, uniqueness: { scope: :route_id }
end
