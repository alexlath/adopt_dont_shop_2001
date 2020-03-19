require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can delete a shelter" do

    visit "/shelters"
    click_on 'Delete Shelter'

    expect(page).to not_have_content("Update1")
  end
end