Rails.application.routes.draw do

  root to: 'pages#home'
  resources :partners
  resources :clients

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
