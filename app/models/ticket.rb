# frozen_string_literal: true

# Class to declare the ticket
class Ticket < ActiveRecord::Base
  validates :user_id, :train_number, :first_station_id, :last_station_id, presence: true
  belongs_to :train
end
