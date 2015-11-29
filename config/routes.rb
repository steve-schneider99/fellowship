Rails.application.routes.draw do
  resources :users
  devise_for :users

  resources :items

  resources :characters
  
  resource :home do
    member do
      get 'social', to: "home#social"
    end
  end
  root to: "home#homepage"


end
