# frozen_string_literal: true

# Class to determine the route of the train
class TrainsRoute < ActiveRecord::Base
  belongs_to :train
  belongs_to :route
end
