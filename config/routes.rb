Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :items
  resource :home do
    member do
      get 'social', to: "home#social"
    end
  end
  root to: "home#homepage"


end
