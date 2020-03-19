require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can update an existing shelter" do

    visit "/shelters"
    click_on 'Update Shelter'
    expect(page).to have_current_path "/shelters/:id/edit"

    fill_in 'shelter[name]', with: "Update1"
    fill_in 'shelter[address]', with: "Update2"
    fill_in 'shelter[city]', with: "Update3"
    fill_in 'shelter[state]', with: "Update4"
    fill_in 'shelter[zip]', with: "Update5"
    click_on 'submit'

    expect(page).to have_current_path "/shelters"
    expect(page).to have_content("Update1")
  end
end