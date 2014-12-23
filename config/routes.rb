Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  root 'pages#home'

  get '/about',      to: 'pages#about'
  get '/profile', to: 'users#show'
  get '/ads/temp',  to: 'ads#temp'

  resources :ads,   only: [:index, :new, :create, :show]
  mount Attachinary::Engine => "/attachinary"
end
