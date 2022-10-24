Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :services
  resources :shops
  get "home", to: 'pages#home'
  get "prestation", to: "services#index"

end
