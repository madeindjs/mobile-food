Rails.application.routes.draw do

  root to: 'clients#index'
  resources :partners
  resources :clients do
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
