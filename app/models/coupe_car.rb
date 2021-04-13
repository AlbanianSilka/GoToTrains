class CoupeCar < Car
  validates_numericality_of :top_seats, :lower_seats, greater_than: 0.0
end
