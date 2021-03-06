# frozen_string_literal: true

# Model for a cars
class Car < ActiveRecord::Base
  TYPES = %w[CoupeCar EconomyCar SittingCar SleepCar].freeze


  belongs_to :trains_ids, class_name: 'Train', foreign_key: :train_id

  validates :train_id, :number, presence: true
  validates :number, uniqueness: { scope: :train_id }

  before_validation :give_number

  protected

  def give_number
    self.number ||= max_number + 1
  end

  def max_number
    Train.find(train_id).cars.pluck(:number).max || 0
  end
end
