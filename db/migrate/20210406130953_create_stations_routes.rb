# frozen_string_literal: true

# Migration to wire stations and trains and create their routes
class CreateStationsRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :railway_stations_routes do |t|
      t.integer :railway_station_id
      t.integer :route_id
    end
  end
end
