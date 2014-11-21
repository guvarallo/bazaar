Rails.application.routes.draw do
  root 'pages#home'

  get '/about',    to: 'pages#about'
  get '/login',    to: 'sessions#new'
  get '/register', to: 'users#new'

  get '/ad-example', to:'ads#show'
  get 'user-example', to:'users#show'
end
