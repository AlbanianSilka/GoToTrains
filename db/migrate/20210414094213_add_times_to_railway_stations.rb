# frozen_string_literal: true

# Class to add datetime to the tickets
class AddTimesToRailwayStations < ActiveRecord::Migration[6.1]
  def change
    add_column :railway_stations_routes, :arrival_time, :datetime
    add_column :railway_stations_routes, :departure_time, :datetime
  end
end
