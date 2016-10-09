Rails.application.routes.draw do
  # Pages route
  root 'pages#index'
  delete '/', to: 'pages#destroy'

  # Photos route
  resources :photos

  # User routes
  get '/register', to: 'users#new'
  resources :users, except: [:new]

  # Session routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
