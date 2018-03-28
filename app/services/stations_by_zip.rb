class StationsByZip
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def stations
    NrelStationSearch.new(zip_code).run[:fuel_stations].map do |raw_station|
      Station.new(raw_station)
    end
  end

  private
    attr_reader :zip_code
end
