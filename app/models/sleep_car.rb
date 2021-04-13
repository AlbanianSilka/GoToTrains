# frozen_string_literal: true

# Class for a sleep type of carriages
class SleepCar < Car
  validates_numericality_of :lower_seats, greater_than: 0.0

  after_validation :set_none

  protected

  def set_none
    self.top_seats, self.side_seats_bottom, self.side_seats_top, self.sitting_seats= nil
  end
end
