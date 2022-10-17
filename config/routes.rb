Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  get "/index", to: "pages#index"
  get "/dashboard", to: "pages#dashboard"

  resources :chat_rooms

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
