# frozen_string_literal: true

# Model for a cars
class Car < ActiveRecord::Base
  TYPES = %w[Купе Плацкарт].freeze

  validates :number, :car_type, :lower_seats, :top_seats, presence: true

  belongs_to :current_train, class_name: 'Train', foreign_key: :current_train_id, optional: true
end
