Rails.application.routes.draw do
  root to: "home#index"
  resources :users,
    controller: "users"
  resources :genres
  resources :instruments
end
