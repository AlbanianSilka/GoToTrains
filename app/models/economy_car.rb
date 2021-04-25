# frozen_string_literal: true

# Class for economic type of carriages
class EconomyCar < Car
  validates_numericality_of :top_seats, :side_seats_top, :lower_seats,
                            :side_seats_bottom, greater_than: 0.0
  after_validation :set_none

  protected

  def set_none
    self.sitting_seats = nil
  end
end
