Rails.application.routes.draw do

  root 'dashboard#show'

  devise_for :users

  resource :dashboard, only: [ :show ], controller: :dashboard

  # Transactions
  resources :harvests,      only: [ :index, :show, :new, :create ]
  resources :trims,         only: [ :index, :show, :new, :create ]
  resources :destructions,  only: [ :index, :show, :new, :create ]

  # Accounts
  resources :plants,        only: [ :index, :show, :new, :create ]
  resources :containers,    only: [ :index, :show, :new, :create ]

end
