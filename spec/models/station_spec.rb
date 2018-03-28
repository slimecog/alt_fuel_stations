require "rails_helper"

describe Station do
  let(:attrs) {
    {
      station_name: "station1",
      street_address: "123 main",
      fuel_type_code: "gas",
      distance: "3",
      access_days_time: "9-5"
    }
  }

  subject { Station.new(attrs) }

  it "exists" do
    expect(subject).to be_a Station
  end

  it "sets attrs as methods" do
    expect(subject.station_name).to eq("station1")
    expect(subject.street_address).to eq("123 main")
    expect(subject.fuel_type_code).to eq("gas")
    expect(subject.distance).to eq("3")
    expect(subject.access_days_time).to eq("9-5")
  end
end
