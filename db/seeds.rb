require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# lemon = Ingredient.create!(name: "lime")
# mojito = Cocktail.create!(name: "mojito")
# mojito_dose = Dose.new(description: "6 leaves")
# mojito_dose.ingredient = lemon
# mojito_dose.cocktail = mojito
# mojito_dose.save!

puts "cleaning up db..."
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts "db is now clean!"
puts "creating cocktails..."
puts "creating ingredients..."

cocktail_array = []
ingredient_array = []
dose_array = []

20.times do
  cocktail = Cocktail.create(name: Faker::Movies::HitchhikersGuideToTheGalaxy.specie + ' Cocktail')
  cocktail_array << cocktail
  cocktail_array.uniq!
end

until cocktail_array.length == ingredient_array.length
  ingredient = Ingredient.create(name: Faker::Food.fruits)
  ingredient_array << ingredient
  ingredient_array.uniq!
end

# cocktails.length.times do
#   dose = Dose.new(description: Faker::Food.measurement)
#   dose.ingredient = ingredients.sample
#   dose.cocktail = cocktails.sample
#   dose.save
# end

# until cocktails.length == doses.length
# cocktail_array.each do |index|
#   dose = Dose.new(
#     description: Faker::Food.measurement,
#   )
#   dose.cocktail = cocktail_array[index].id.to_i
#   dose.ingredient = ingredient_array[index].id.to_i
#   dose_array << dose
#   dose.save
# end
