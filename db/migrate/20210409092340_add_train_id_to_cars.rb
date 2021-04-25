class AddTrainIdToCars < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :cars, :train
  end
end
