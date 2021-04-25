class AddIndexesToCars < ActiveRecord::Migration[6.1]
  def change
    add_index :cars, [:id, :type]
  end
end
