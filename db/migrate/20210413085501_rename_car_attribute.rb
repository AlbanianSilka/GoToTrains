class RenameCarAttribute < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :type, :string
    add_column :cars, :side_seats_top, :integer
    add_column :cars, :side_seats_bottom, :integer
    add_column :cars, :sitting_seats, :integer
  end
end
