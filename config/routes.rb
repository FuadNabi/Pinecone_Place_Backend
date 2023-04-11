Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :rooms
  end
  # Defines the root path route ("/")
  root "root#index"
  namespace :api do
    namespace :v1 do
      resources :reservations, only: [:index, :create, :destroy]
    end
  end
  resources :users
  post '/auth/login', to: 'authentication#login'
end
