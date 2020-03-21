require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I can see the image, name, age, sex, and shelter of each pet at '/pets'" do

    shelter = Shelter.create(name:     "Dumb Friends League",
                              address:  "2080 S. Quebec St.",
                              city:     "Denver",
                              state:    "CO",
                              zip:      "80231")
    pet = shelter.pets.create(image: "./app/assets/images/kona.jpeg",
                                name: "Kona",
                                approx_age: 6,
                                sex: "Male")

    visit "/pets"

    expect(page).to have_content(pet.image)
    expect(page).to have_content(pet.name)
    expect(page).to have_content(pet.approx_age)
    expect(page).to have_content(pet.sex)
    expect(page).to have_content(shelter.name)
  end
end