Rails.application.routes.draw do

  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'signup'
    }

  resources :users,            only: [:show, :edit, :update]
  resources :listings
  resources :listing_savings, only: [:create, :destroy]
  post '/save', to: 'listing_savings#create'

  root "main#index"
end
