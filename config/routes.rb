Rails.application.routes.draw do
  # Pages route
  root 'pages#index'

  # Photos route
  resources :photos
end
