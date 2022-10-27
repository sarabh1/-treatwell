Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :services
  resources :reservations

  resources :shops do
    resources :services
  end

  resources :services do
    resources :reservations,  only: [:new,:create,:delete, :destroy]
  end

  # get "reservations", to: "reservations#index"
  # get "reservation", to: "reservations#show"

  get "home", to: 'pages#home'
  get "prestations", to: "services#index"
  delete "shop", to: "shops#destroy"

end
