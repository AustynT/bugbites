Rails.application.routes.draw do

  get 'static_pages/about_me', to: "static_pages#about_me", as: "about_me"

  devise_for :users
  resources :states
  resources :countries, except: [:show]
  resources :blogs


  root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
