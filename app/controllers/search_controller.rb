class SearchController < ApplicationController
  def index
    @stations = StationsByZip.new(params[:q]).stations
  end
end
