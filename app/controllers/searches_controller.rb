
class SearchesController < ApplicationController
  before_action :authenticate_user!
  def show
    @stations = RailwayStation.all
  end
end