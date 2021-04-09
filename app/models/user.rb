# frozen_string_literal: true

# Model for a users
class User < ActiveRecord::Base
  has_many :tickets
end
