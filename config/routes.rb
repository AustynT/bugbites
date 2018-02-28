Rails.application.routes.draw do

  get 'static_pages/about_me', to: "static_pages#about_me", as: "about_me"
  get 'admin', to: 'static_pages#admin', as: 'admin'

  devise_for :users
  resources :states
  resources :countries
  resources :blogs


  root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
