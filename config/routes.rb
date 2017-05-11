Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/recipes", to: 'recipes#index'
  get "/recipes/new", to: 'recipes#new'
  get "/recipes/:id", to: 'recipes#show'
  post "/recipes", to: 'recipes#create'
  get "/recipes/:id/edit", to: 'recipes#edit'
  patch "/recipes/:id", to: 'recipes#update'
end
