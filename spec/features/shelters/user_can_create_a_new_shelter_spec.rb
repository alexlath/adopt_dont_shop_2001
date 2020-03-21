require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  # context "as a user" do
    it "can create a new shelter" do
      visit "/shelters"
      click_on 'New Shelter'
      expect(page).to have_current_path "/shelters/new"

      fill_in 'name', with: "Testing1"
      fill_in 'address', with: "Testing2"
      fill_in 'city', with: "Testing3"
      fill_in 'state', with: "Testing4"
      fill_in 'zip', with: "Testing5"
      click_on 'Create Shelter'

      expect(page).to have_current_path "/shelters"
      expect(page).to have_content("Testing1")
    # end
  end
end