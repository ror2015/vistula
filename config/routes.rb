Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'home#index'

  resources :offers
  resources :apply_forms

  namespace :admin do
  	resources :offers do
  		resources :apply_forms
    root 'home#index'
  end
end
end