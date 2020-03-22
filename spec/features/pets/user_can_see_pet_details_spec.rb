require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I can see a pet's information at pets/:id'" do

    shelter = Shelter.create(name:    "Dumb Friends League",
                             address: "2080 S. Quebec St.",
                             city:    "Denver",
                             state:   "CO",
                             zip:     "80231")
    pet = shelter.pets.create(image:     "kona.jpeg",
                              name:       "Kona",
                              description:  "Kona greets everyone with the \
                                            biggest smile! He's always happy \
                                            and is so easy to fall in love \
                                            with. He seems to love everyone he \
                                            meets, but can get a little overly \
                                            excited some times and may knock \
                                            little kids down. He is reportedly \
                                            housebroken and does well when \
                                            left alone in the home. He would \
                                            benefit from daily walks and lots \
                                            of playtime!",
                              approx_age: 6,
                              sex:        "Male",
                              status:     "Adoptable")


    visit "/pets/#{pet.id}"

    expect(page).to have_xpath("//img[contains(@src, #{pet.image})]")
    expect(page).to have_content(pet.name)
    expect(page).to have_content(pet.description)
    expect(page).to have_content(pet.approx_age)
    expect(page).to have_content(pet.sex)
    expect(page).to have_content(pet.status)
  end
end