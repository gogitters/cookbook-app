class RecipesController < ApplicationController
  def index
    if params[:sort]
      @recipes = Recipe.order(params[:sort])
    else
      @recipes = Recipe.all
    end
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
    recipe = Recipe.new(title: params[:title_param], chef: params[:chef_param], prep_time: params[:prep_time])
    recipe.save
    flash[:success] = "Your recipe has been created."
    redirect_to "/recipes/#{recipe.id}"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.title = params[:title_params]
    recipe.chef = params[:chef_params]
    recipe.ingredients = params[:ingredients_params]
    recipe.save
    # @recipe.update(title: params[:title_params], chef: params[:chef_params], ingredients: params[:ingredients_params])
    # render "show.html.erb"
    flash[:info] = "Your recipe has been updated."
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    flash[:danger] = "Your recipe has been deleted."
    redirect_to "/"
  end
end
