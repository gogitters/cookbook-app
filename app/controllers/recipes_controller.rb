class RecipesController < ApplicationController
  def one_recipe_method
    @recipe = Recipe.first
    render "first_recipe_page.html.erb"
  end

  def new_recipe_method
    render "new_recipe_form.html.erb"
  end

  def create_recipe_method
    @recipe = Recipe.new(title: params[:title_param], chef: params[:chef_param], prep_time: params[:prep_time_param])
    @recipe.save
    render "recipe_result.html.erb"
  end
end
