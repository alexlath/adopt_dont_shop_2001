require 'rails_helper'

RSpec.describe "welcome page", type: :feature do
  it "can view a welcome page" do

    visit "/"

    expect(page).to have_content("Welcome to Adopt Don't Shop")
    expect(page).to have_content("Shelters List")
  end
end