Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :items
  root to: "home#homepage"


end
