# frozen_string_literal: true

# Model for a cars
class Car < ActiveRecord::Base
  TYPES = %w[CoupeCar EconomyCar SittingCar SleepCar].freeze

  validates :number, :type, presence: true
  validates :number, uniqueness: { scope: :current_train_id }

  belongs_to :current_train, class_name: 'Train', foreign_key: :current_train_id, optional: true

  before_validation :set_number

  protected

  def set_number
    self.number ||= max_number + 1
  end

  def max_number
    @train.cars.pluck(:number).max || 0
  end
end
