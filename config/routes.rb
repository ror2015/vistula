Rails.application.routes.draw do
  resources :clubs
  devise_for :admins
  devise_for :users
  root 'home#index'

  namespace :admin do
    root 'home#index'
  end
end
