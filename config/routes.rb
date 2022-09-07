Rails.application.routes.draw do
  get "/dashboard" => 'dashboard#index', as: :dashboard
  
  resources :properties
  # get 'public/index'
  devise_for :users, controllers: { registrations: "users/registrations" } 
  root to: 'public#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
