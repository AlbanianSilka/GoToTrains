# frozen_string_literal: true

# Class for a sitting type of carriages
class SittingCar < Car
  validates_numericality_of :sitting_seats, greater_than: 0.0
  after_validation :set_none

  protected

  def set_none
    self.top_seats, self.side_seats_bottom, self.lower_seats, self.side_seats_top = nil
  end
end
