Rails.application.routes.draw do
  root to: "home#index"
  resources :users, only: [:index, :show]
  resources :genres
  resources :instruments
end
