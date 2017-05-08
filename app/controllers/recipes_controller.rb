class RecipesController < ApplicationController
  def one_recipe_method
    @recipe = Recipe.first
    render "first_recipe_page.html.erb"
  end
end
