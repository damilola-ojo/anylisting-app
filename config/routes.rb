Rails.application.routes.draw do
  devise_for :users
  root "main#index"
  resources :listings
  resources :categories, :locations, only: [:new, :create]
end
