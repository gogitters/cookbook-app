Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'recipes#index'
  # get "/", to: 'recipes#index'
  get "/recipes", to: 'recipes#index'
  get "/recipes/new", to: 'recipes#new'
  get "/recipes/:id", to: 'recipes#show'
  post "/recipes", to: 'recipes#create'
  get "/recipes/:id/edit", to: 'recipes#edit'
  patch "/recipes/:id", to: 'recipes#update'
  delete "/recipes/:id", to: 'recipes#destroy'

  # sign up routes
  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'

  # login/log routes
  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  get "/logout", to: 'sessions#destroy'
end
