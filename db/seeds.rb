# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
animal_a = Animal.create(common_name: "Black-Capped Chickadee", scientific_name: "Poecile Atricapillus")
animal_b = Animal.create(common_name: "Grackle", scientific_name: "Quiscalus Quiscula")
animal_c = Animal.create(common_name: "Common Starling", scientific_name: "Sturnus Vulgaris")
animal_d = Animal.create(common_name: "Mourning Dove", scientific_name: "Zenaida Macroura")

sighting_a = Sighting.create(latitude: "40.730610", longitude: "-73.935242")
sighting_b = Sighting.create(latitude: "30.26715", longitude: "-97.74306")
sighting_c = Sighting.create(latitude: "45.512794", longitude: "-122.679565")

sightinglog_a = SightingLog.create(animal: animal_a, sighting: sighting_b)
sightinglog_b = SightingLog.create(animal: animal_b, sighting: sighting_a)
sightinglog_c = SightingLog.create(animal: animal_c, sighting: sighting_a)
sightinglog_d = SightingLog.create(animal: animal_d, sighting: sighting_c)
sightinglog_e = SightingLog.create(animal: animal_a, sighting: sighting_b)