Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  root 'home#index'
resources :announcements
  namespace :admin do
    resources :announcements
    root 'home#index'
  end
end
