require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can create a new shelter" do

    visit "/shelters"
    click_on 'New Shelter'
    expect(page).to have_current_path "/shelters/new"

    fill_in 'shelter[name]', with: "Testing1"
    fill_in 'shelter[address]', with: "Testing2"
    fill_in 'shelter[city]', with: "Testing3"
    fill_in 'shelter[state]', with: "Testing4"
    fill_in 'shelter[zip]', with: "Testing5"
    click_on 'submit'

    expect(page).to have_current_path "/shelters"
    expect(page).to have_content("Testing1")
  end
end