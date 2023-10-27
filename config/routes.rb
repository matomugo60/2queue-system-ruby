Rails.application.routes.draw do
  devise_for :users

  resources :queue_entries, only: [:index, :create, :destroy]
  resources :clients, only: [:index, :create, :destroy]
  resources :admins, only: [:index, :update]


  root 'queue_entries#index'

  
end
