# frozen_string_literal: true

# Class to create different routes of our trains
class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.string :name

      t.timestamps
    end
  end
end
