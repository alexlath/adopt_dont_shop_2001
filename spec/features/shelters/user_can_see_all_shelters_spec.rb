require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can see all shelter names" do
    shelter1 = Shelter.create(name: "Ripley's Playhouse")
    shelter2 = Shelter.create(name: "Camp Bow Wow")
    shelter3 = Shelter.create(name: "Camp Bug Juice")

    visit "/shelters"

    expect(page).to have_content(shelter1.name)
    expect(page).to have_content(shelter2.name)
    expect(page).to have_content(shelter3.name)
  end
end