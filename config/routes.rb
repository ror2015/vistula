Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'home#index'
  get '/about', to: 'home#about'

  namespace :admin do
    root 'home#index'
  end
end
