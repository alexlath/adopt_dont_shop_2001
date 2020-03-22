require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I can update a shelter at '/shelters'" do

    shelter = Shelter.create(name:    "Dumb Friends League",
                             address: "2080 S. Quebec St.",
                             city:    "Denver",
                             state:   "CO",
                             zip:     "80231")

    new_info = {name:     "Denver Animal Shelter",
                address:  "1241 W. Bayaud Ave.",
                city:     "Denver",
                state:    "CO",
                zip:      "80223"}

    visit "/shelters"

    click_link "Update Shelter"

    expect(page).to have_current_path("/shelters/#{shelter.id}/edit")
  end
end