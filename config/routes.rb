Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/first_recipe", to: "recipes#one_recipe_method"

  get "/new_recipe_form", to: 'recipes#new_recipe_method'
  post "/recipe_form_result", to: 'recipes#create_recipe_method'
end
