Rails.application.routes.draw do
  resources :trains
  resources :railway_stations do
    member do
      post :update_position
      post :update_time
    end
  end
  resource :search, only: %i[show new edit] do
    post '/', to: 'searches#search'
  end
  resources :routes
  resources :tickets
  resources :cars
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
