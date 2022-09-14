Rails.application.routes.draw do
  root "main#index"
  resources :listings
  resources :categories, :locations, only: [:new, :create]
end
