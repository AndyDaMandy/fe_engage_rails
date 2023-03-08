# == Route Map
#

Rails.application.routes.draw do
  resources :class_growths
  resources :units
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'units#index'
end
