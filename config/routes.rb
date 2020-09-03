Rails.application.routes.draw do

  devise_for :users
  root to: 'clients#index'
  resources :partners
  resources :clients do
    resources :bookings, only: [:index, :new, :create,:show]
  end
  resources :bookings, only: [:index,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
