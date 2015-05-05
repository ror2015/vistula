Rails.application.routes.draw do
  resources :clubs do
    member do
      get :join
    end
  end
  namespace :admin do
    resources :clubs
  end
  devise_for :admins
  devise_for :users
  root 'home#index'

  namespace :admin do
    root 'home#index'
  end
end
