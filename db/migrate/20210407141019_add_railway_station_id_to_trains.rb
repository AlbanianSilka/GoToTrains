# frozen_string_literal: true

# Class to create current stations for trains
class AddRailwayStationIdToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :current_station_id, :integer
  end
end
