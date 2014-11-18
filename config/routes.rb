Rails.application.routes.draw do
  root 'ads#index'

  get '/login', to: 'sessions#new'

  resources :users, only: [:new]

end
