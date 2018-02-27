Rails.application.routes.draw do
  devise_for :users
  resources :states
  resources :countries, except: [:show]
  resources :blogs


  root to: "countries#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
