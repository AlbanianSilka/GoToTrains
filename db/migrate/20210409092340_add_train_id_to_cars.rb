class AddTrainIdToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :current_train_id, :integer
  end
end
