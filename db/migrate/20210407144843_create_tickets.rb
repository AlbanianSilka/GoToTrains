# frozen_string_literal: true

# Class to create tickets on trains
class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.belongs_to :user, index: true
      t.integer :train_id
      t.integer :first_station_id
      t.integer :last_station_id
      t.timestamps
    end
  end
end
