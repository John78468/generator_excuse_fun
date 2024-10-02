Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :excuses, only: [:index, :new, :create]
  get 'random', to: 'excuses#random'
  root 'excuses#random'

end
