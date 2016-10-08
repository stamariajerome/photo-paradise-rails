Rails.application.routes.draw do
  # Pages route
  root 'pages#index'

  # Photos route
  resources :photos

  # User routes
  resources :users
end
