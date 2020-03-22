require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I can view the welcome page at '/'" do

    visit "/"

    expect(page).to have_link("Home")
    expect(page).to have_link("All Shelters")
    expect(page).to have_link("All Pets")
    expect(page).to have_content("Welcome to Adopt Don't Shop")
  end
end