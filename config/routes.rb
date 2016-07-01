Rails.application.routes.draw do

  root 'dashboard#show'

  devise_for :users

  resource :dashboard, only: [ :show ], controller: :dashboard

  resources :transactions
  resources :harvests,      only: [ :new, :create ]
  resources :trims,         only: [ :new, :create ]
  resources :destructions,  only: [ :new, :create ]

  resources :accounts
  resources :plants,        only: [ :new, :create ]
  resources :containers,    only: [ :new, :create ]

end
