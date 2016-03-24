Rails.application.routes.draw do
resources :users
resources :attractions
resources :rides

root to: 'welcome#home'
<<<<<<< HEAD

=======
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
  get '/users/new', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'


end