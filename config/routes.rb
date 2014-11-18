Rails.application.routes.draw do
  root 'pages#home'

  get '/login', to: 'sessions#new'
  get '/about', to: 'pages#about'

  resources :users, only: [:new]

end
