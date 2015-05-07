Rails.application.routes.draw do
  resources :reviews
  resources :groups
  devise_for :admins
  devise_for :users

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
    root 'home#index'
    resources :announcements

    resources :'events' do
      resources :'attendences'
    end
  end
end

