# frozen_string_literal: true

# Class to add first and last name to user
class AddNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
