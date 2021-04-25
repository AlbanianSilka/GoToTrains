# frozen_string_literal: true

# Class to create tickets on trains
class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.belongs_to :user, index: true
      t.integer :train_id
      t.belongs_to :first_station, index: true
      t.belongs_to :last_station, index: true
      t.timestamps
    end
  end
end
