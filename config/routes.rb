Rails.application.routes.draw do
  resources :payments

  resources :invoices

  resources :prestations
  resources :matters

  resources :clients

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
