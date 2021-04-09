# frozen_string_literal: true

# Model for a train and his validation
class Train < ActiveRecord::Base
  validates :number, presence: true
  has_many :cars, foreign_key: :current_train_id
  has_one :trains_route
  has_one :route, through: :trains_route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id, optional: true
end
