# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all

puts 'Creating ingredients...'
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "rhum")
Ingredient.create(name: "tonic water")
Ingredient.create(name: "coca-cola")
Ingredient.create(name: "vodka")
Ingredient.create(name: "water")
Ingredient.create(name: "sparkling wine")
Ingredient.create(name: "strawberry")
Ingredient.create(name: "peaches")
Ingredient.create(name: "siriguela")
Ingredient.create(name: "mango")
Ingredient.create(name: "pineapple")
Ingredient.create(name: "tomato juice")
Ingredient.create(name: "orange juice")
Ingredient.create(name: "cachaça")
Ingredient.create(name: "bourbon")
Ingredient.create(name: "whisky")
Ingredient.create(name: "gin")
Ingredient.create(name: "sugar")
Ingredient.create(name: "beer")
Ingredient.create(name: "condensed milk")
Ingredient.create(name: "lime")
Ingredient.create(name: "carbonated water")

puts 'Creating Cocktails...'
Cocktail.create(name: "caipirinha")
Cocktail.create(name: "caipiroska")
Cocktail.create(name: "cuba libre")

puts 'Creating Doses...'
Dose.create({  description: '1 sliced',
                cocktail_id: Cocktail.find_by(name: "caipirinha").id,
                ingredient_id: Ingredient.find_by(name: "lime").id })
Dose.create({  description: '2 soup spoons',
                cocktail_id: Cocktail.find_by(name: "caipirinha").id,
                ingredient_id: Ingredient.find_by(name: "sugar").id })
Dose.create({  description: '6 pieces',
                cocktail_id: Cocktail.find_by(name: "caipirinha").id,
                ingredient_id: Ingredient.find_by(name: "ice").id })
Dose.create({  description: '100ml',
                cocktail_id: Cocktail.find_by(name: "caipirinha").id,
                ingredient_id: Ingredient.find_by(name: "cachaça").id })
Dose.create({  description: '1 sliced',
                cocktail_id: Cocktail.find_by(name: "caipiroska").id,
                ingredient_id: Ingredient.find_by(name: "lime").id })
Dose.create({  description: '2 soup spoons',
                cocktail_id: Cocktail.find_by(name: "caipiroska").id,
                ingredient_id: Ingredient.find_by(name: "sugar").id })
Dose.create({  description: '6 pieces',
                cocktail_id: Cocktail.find_by(name: "caipiroska").id,
                ingredient_id: Ingredient.find_by(name: "ice").id })
Dose.create({  description: '100ml',
                cocktail_id: Cocktail.find_by(name: "caipiroska").id,
                ingredient_id: Ingredient.find_by(name: "vodka").id })

Dose.create({  description: '200ml',
                cocktail_id: Cocktail.find_by(name: "cuba libre").id,
                ingredient_id: Ingredient.find_by(name: "coca-cola").id })
Dose.create({  description: '100ml',
                cocktail_id: Cocktail.find_by(name: "cuba libre").id,
                ingredient_id: Ingredient.find_by(name: "rhum").id })

puts 'All right, time to get drunk!'
