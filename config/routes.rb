Rails.application.routes.draw do
  resources :reviews
  resources :groups
  devise_for :admins
  devise_for :users
  root 'home#index'

  namespace :admin do
    resources :reviews
    root 'home#index'
  end
end

