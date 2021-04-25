# frozen_string_literal: true

# Class to declare the ticket
class Ticket < ActiveRecord::Base
  belongs_to :user
  validates :user_passport, :train_id, :first_station_id, :last_station_id, presence: true
  belongs_to :train, class_name: 'Train', foreign_key: :train_id
  belongs_to :first_station, class_name: 'RailwayStation', foreign_key: :first_station_id
  belongs_to :last_station, class_name: 'RailwayStation', foreign_key: :last_station_id

  after_create :send_notification

  def route_name
    "#{first_station.title} - #{last_station.title}"
  end

  private

  def send_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end
end
