class NrelStationSearch
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def run
    get_json("/api/alt-fuel-stations/v1/nearest.json")
  end

  private
    attr_reader :zip_code

    def get_json(url)
      response = conn.get(url)
      require "pry"; binding.pry
      JSON.parse(response.body, symbolize_names: true)
    end

    def conn
      Faraday.new("https://developer.nrel.gov", headers: headers)
    end

    def headers
      {
        "x-api_key": ENV["nrel_api_key"],
        "zip_code": "#{zip_code}",
        "fuel_type": "ELEC,LPG",
        "location": "denver+co",
        "latitude": "39.738453",
        "longitude": "-104.984853"
      }
    end
end
