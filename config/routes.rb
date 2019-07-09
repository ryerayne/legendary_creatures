Rails.application.routes.draw do
  resources :travelers
  resources :universes do 
    resources :creatures
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end