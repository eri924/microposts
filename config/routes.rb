Rails.application.routes.draw do
  get 'settings/edit'
  post '/settings/edit'

  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resource :settings, only: [:edit, :update]
end