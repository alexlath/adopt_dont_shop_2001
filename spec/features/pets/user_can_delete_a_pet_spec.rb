require 'rails_helper'

RSpec.describe "As a user", type: :feature do
  it "I can delete a pet at 'pets/:id'" do

    shelter = Shelter.create(name:    "Dumb Friends League",
                             address: "2080 S. Quebec St.",
                             city:    "Denver",
                             state:   "CO",
                             zip:     "80231")
    pet = shelter.pets.create(image:        "kona.jpeg",
                              name:         "Kona",
                              description:  "Kona greets everyone with the biggest smile! He's always happy and is so easy to fall in love with. He seems to love everyone he meets, but can get a little overly excited some times and may knock little kids down. He is reportedly housebroken and does well when left alone in the home. He would benefit from daily walks and lots of playtime!",
                              approx_age:   6,
                              sex:          "male",
                              status:       "adoptable")


    visit "/pets/#{pet.id}"

    click_link "Delete Pet"

    expect(page).to have_current_path("/pets")
    expect(page).to_not have_content(pet.name)
  end
end