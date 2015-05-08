Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :reviews
  resources :groups
  resources :clubs do
    member do
      get :join
    end
  end
  root 'home#index'
  resources :announcements

  resources :'events' do
    resources :'attendences' do
      collection do
        get :unattend
        get :attend
      end
    end
  end

  namespace :admin do
    resources :reviews
    resources :clubs

    root 'home#index'
    resources :announcements

    resources :'events' do
      resources :'attendences'
    end
  end
end

