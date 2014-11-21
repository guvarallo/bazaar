Rails.application.routes.draw do
  root 'pages#home'

  get '/about',      to: 'pages#about'
  get '/login',      to: 'sessions#new'
  get '/ad-example', to: 'ads#show'
  get '/user-example', to: 'users#show'

  resources :ads,   only: [:index, :new]
  resources :users, only: [:new, :show, :edit, :update]
end
