# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shelter1 = Shelter.create(name:     "Dumb Friends League",
                          address:  "2080 S. Quebec St.",
                          city:     "Denver",
                          state:    "CO",
                          zip:      "80231")
shelter2 = Shelter.create(name:     "Denver Animal Shelter",
                          address:  "1241 W. Bayaud Ave.",
                          city:     "Denver",
                          state:    "CO",
                          zip:      "80223")
shelter3 = Shelter.create(name:     "MaxFund Animal Adoption Center",
                          address:  "1005 Galapago St.",
                          city:     "Denver",
                          state:    "CO",
                          zip:      "80204")
shelter4 = Shelter.create(name:     "Foothills Animal Shelter",
                          address:  "580 McIntyre St.",
                          city:     "Golden",
                          state:    "CO",
                          zip:      "80401")