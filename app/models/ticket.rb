# frozen_string_literal: true

# Class to declare the ticket
class Ticket < ActiveRecord::Base
  validates :user_last_name, :user_first_name, :user_passport, :train_id, :first_station_id, :last_station_id, presence: true
  belongs_to :user
  belongs_to :train, class_name: 'Train', foreign_key: :train_id
  belongs_to :first_station, class_name: 'RailwayStation', foreign_key: :first_station_id
  belongs_to :last_station, class_name: 'RailwayStation', foreign_key: :last_station_id
end
