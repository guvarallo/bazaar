Rails.application.routes.draw do
  root 'pages#home'

  get '/about',    to: 'pages#about'
  get '/login',    to: 'sessions#new'
  get '/register', to: 'users#new'


end
