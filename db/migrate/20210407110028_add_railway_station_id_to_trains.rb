# frozen_string_literal: true

# Migration to add train to railway station
class AddRailwayStationIdToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :current_station_id, :integer
  end
end
