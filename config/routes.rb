Rails.application.routes.draw do
  root :to => 'application#welcome'

  get '/universes/most_creatures' => 'universes#most_creatures'
  resources :travelers
  resources :universes do 
    resources :creatures
  end

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#create'

  post '/creatures/collect' => 'creatures#collect'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end