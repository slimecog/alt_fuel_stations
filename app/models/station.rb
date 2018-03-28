class Station
  attr_reader :station_name,
              :street_address,
              :fuel_type_code,
              :distance,
              :access_days_time
  def initialize(attrs = {})
    @station_name = attrs[:station_name]
    @street_address = attrs[:street_address]
    @fuel_type_code = attrs[:fuel_type_code]
    @distance = attrs[:distance]
    @access_days_time = attrs[:access_days_time]
  end
end
