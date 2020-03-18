require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can show all shelter names" do
    shelter1 = Shelter.create(name:     "Dumb Friends League",
                              address:  "2080 S. Quebec St.",
                              city:     "Denver",
                              state:    "CO",
                              zip:      "80231")
    shelter2 = Shelter.create(name:     "Denver Animal Shelter",
                              address:  "1241 W. Bayaud Ave.",
                              city:     "Denver",
                              state:    "CO",
                              zip:      "80223")
    shelter3 = Shelter.create(name:     "MaxFund Animal Adoption Center",
                              address:  "1005 Galapago St.",
                              city:     "Denver",
                              state:    "CO",
                              zip:      "80204")
    shelter4 = Shelter.create(name:     "Foothills Animal Shelter",
                              address:  "580 McIntyre St.",
                              city:     "Golden",
                              state:    "CO",
                              zip:      "80401")

    visit "/shelters"

    expect(page).to have_content(shelter1.name)
    expect(page).to have_content(shelter2.name)
    expect(page).to have_content(shelter3.name)
    expect(page).to have_content(shelter4.name)
  end
end