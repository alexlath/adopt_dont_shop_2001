require 'rails_helper'

RSpec.describe "shelter page", type: :feature do
  it "can show shelter info" do
    shelter1 = Shelter.create(name:     "Dumb Friends League",
                              address:  "2080 S. Quebec St.",
                              city:     "Denver",
                              state:    "CO",
                              zip:      "80231")

  visit "/shelters/#{shelter1.id}"

  expect(page).to have_content(shelter1.name)
  expect(page).to have_content(shelter1.address)
  expect(page).to have_content(shelter1.city)
  expect(page).to have_content(shelter1.state)
  expect(page).to have_content(shelter1.zip)
  end
end