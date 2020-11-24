Rails.application.routes.draw do
  
  get 'login', to: 'sessions#new' # Vista
  post 'login', to: 'sessions#create' # Quien procesa la petició!

  get 'logout', to: 'sessions#destroy'

  root 'main#home'
  get 'custome', to: 'main#custome'

  resources :users, only: [:new, :create]

end
