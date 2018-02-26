Rails.application.routes.draw do
  get 'countries/:name', to: 'countries#show'
  resources :states
  resources :countries, only: [:show, :index]
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
