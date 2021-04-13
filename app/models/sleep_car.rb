class SleepCar < Car
  validates_numericality_of :lower_seats, greater_than: 0.0
end
