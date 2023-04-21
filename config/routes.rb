Rails.application.routes.draw do
  resources :uploads
  devise_for :users
  get 'home/page'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#page"
end
