Rails.application.routes.draw do

  resources :harvests
  resources :destructions
  resources :plants

  resources :transactions
  resources :accounts

end
