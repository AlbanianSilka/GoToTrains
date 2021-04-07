# frozen_string_literal: true

# Class for a train and his validation
class Train < ApplicationRecord
  validates :number, presence: true
end
