# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "desserts")
Category.create(name: "delicious")
Category.create(name: "gross")
Category.create(name: "yummy")

Recipe.all.each do |recipe|
  CategorizedRecipe.create(recipe_id: recipe.id, category_id: Category.pluck(:id).sample)
  CategorizedRecipe.create(recipe_id: recipe.id, category_id: Category.pluck(:id).sample)
end
