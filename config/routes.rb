Rails.application.routes.draw do
  devise_for :users
  resource :search, only: [:new, :show, :edit, :create]
  resource :search, only: %i[show new edit] do
    post '/', to: 'searches#search'
  end
  resources :tickets
  namespace :admin do
    resources :railway_stations do
      member do
        post :update_position
        post :update_time
      end
    end
    resources :routes
    resources :trains do
      resources :cars, shallow: true
    end
    resources :tickets
  end
  get 'welcome/index'
  root 'searches#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
