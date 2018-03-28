require "rails_helper"

describe "as a user" do
  describe "when i visit the root" do
    describe "i fill in search bar and click locate" do
      it "shows 10 closest stations within 6 miles by distance" do
        visit "/"

        fill_in "q", with: "80203"

        click_on "Locate"

        expect(current_path). to eq("/search")
        expect(current_url). to include("zip_code=80203")
        expect(current_url). to include("fuel_type_code=ELEC,LPG")
        expect(current_url). to include("fuel_type_code=denver+co")
      end
    end
  end
end
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
