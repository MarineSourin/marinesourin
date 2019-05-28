Rails.application.routes.draw do
  root to: 'pages#home'
  resources :cvs, only: :index
  resources :portfolios, only: :index
  resources :contacts, only: [:index, :new, :create]
end
