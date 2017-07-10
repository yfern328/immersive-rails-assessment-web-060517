Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :guests, only: [:index]
  # resources :episodes, only: [:index]

  root to: "application#index"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#new"
  delete "/logout", to: "sessions#destroy"

  resources :guests
  resources :episodes
  resources :appearances
  resources :users

end
