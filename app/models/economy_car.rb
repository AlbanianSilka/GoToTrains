class EconomyCar < Car
  validates_numericality_of :top_seats, :side_seats_top, :lower_seats,
                            :side_seats_bottom, greater_than: 0.0
end
