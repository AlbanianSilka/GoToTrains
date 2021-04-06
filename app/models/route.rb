# frozen_string_literal: true

# Class to declare the route
class Route < ApplicationRecord
  validates :name, presence: true
end
