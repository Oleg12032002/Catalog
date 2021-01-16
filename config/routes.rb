Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'
  resources :music_products, only: [:index,:show]
  get :search, to: 'music_products#search'


end
