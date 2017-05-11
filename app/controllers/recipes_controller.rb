class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render "index.html.erb"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @recipe = Recipe.new(title: params[:title_param], chef: params[:chef_param], prep_time: params[:prep_time])
    @recipe.save
    render "create.html.erb"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    # if params[:title_params] != ""
    # end
    @recipe.title = params[:title_params]
    @recipe.chef = params[:chef_params]
    @recipe.ingredients = params[:ingredients_params]
    @recipe.save
    # @recipe.update(title: params[:title_params], chef: params[:chef_params], ingredients: params[:ingredients_params])
    render "update.html.erb"
  end
end
