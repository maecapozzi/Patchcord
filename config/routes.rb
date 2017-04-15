Rails.application.routes.draw do
  root to: "home#index"
  resources :users, only: [:index]
  resources :genres
  resources :instruments
end
