Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" } 
  resources :properties
  
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile
  post "/user/message" => "properties#user_email", as: :user_email
  patch "property_update" => "properties#property_update"
  root to: 'public#index'
  # get 'public/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
