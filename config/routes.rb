Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  root 'pages#home'

  get '/about',      to: 'pages#about'
  get '/ad-example', to: 'ads#show'
  get '/profile', to: 'users#show'

  resources :ads,   only: [:index, :new]
end
