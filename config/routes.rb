Rails.application.routes.draw do

  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'signup'
    }
  resources :listings
  resources :categories, :locations, only: [:new, :create]

  root "main#index"
end
