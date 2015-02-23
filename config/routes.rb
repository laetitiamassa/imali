Rails.application.routes.draw do
  resources :payments

  resources :invoices do
  	member do
      get :prestation_follow
      get :prestation_unfollow
  	end
  end

  resources :prestations do
    member do
      get :invoice_follow
      get :invoice_unfollow
    end
  end

  resources :matters

  resources :clients

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
