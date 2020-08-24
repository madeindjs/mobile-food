Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'clients/new'
  get 'clients/create'
  get 'partners/new'
  get 'partners/create'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
