# frozen_string_literal: true

# Migration to wire stations and trains and create their routes
class CreateStationsRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :railway_stations_routes do |t|
      t.belongs_to :railway_station, index: true
      t.belongs_to :route, index: true
    end
  end
end
