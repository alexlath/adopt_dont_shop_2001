require 'rails_helper'

RSpec.describe "As a user", type: :feature do
  it "I can delete a shelter at 'shelters/:id'" do

    shelter = Shelter.create(name:    "Dumb Friends League",
                             address: "2080 S. Quebec St.",
                             city:    "Denver",
                             state:   "CO",
                             zip:     "80231")

    visit "/shelters/#{shelter.id}"
    expect(page).to have_content "Delete Shelter"

    click_on "Delete Shelter"

    expect(page).to have_current_path "/shelters"
    expect(page).to_not have_content("Dumb Friends League")
  end
end