Rails.application.routes.draw do
resources :users
resources :attractions
resources :rides

root to: 'welcome#home'

  get '/users/new', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'


end