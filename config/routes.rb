Rails.application.routes.draw do

  devise_for :users
  root to: 'clients#index'
  resources :partners
  resources :clients do
    resources :bookings, only: [:index, :new, :create,:show,:edit]
  end
  resources :bookings, only: [:index,:show,:edit,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
