# frozen_string_literal: true

# Class for a coupe carriages
class CoupeCar < Car
  validates_numericality_of :top_seats, :lower_seats, greater_than: 0.0

  after_validation :set_none

  protected

  def set_none
    self.sitting_seats, self.side_seats_bottom, self.side_seats_top = nil
  end
end
