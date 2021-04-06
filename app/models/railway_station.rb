# frozen_string_literal: true

# Declaration of Railway Station class and its validation
class RailwayStation < ApplicationRecord
  validates :title, presence: true
end
