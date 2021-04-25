# frozen_string_literal: true

# Migration to wire trains and routes
class CreateTrainsRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :trains_routes do |t|
      t.belongs_to :train, index: true
      t.belongs_to :route, index: true
    end
  end
end
