Rails.application.routes.draw do
  resources :tasks
  resources :users
  root 'pages#index'

  get 'log-in', to: 'sessions#new'
  post 'log-in', to: 'sessions#create'
  delete 'log-out', to: 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
