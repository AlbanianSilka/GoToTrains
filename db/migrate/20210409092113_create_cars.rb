class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.integer :number
      t.string :car_type
      t.integer :top_seats
      t.integer :lower_seats
      t.timestamps
    end
  end
end
