Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  post 'users/create'
  get 'users/show'
  root :to => "users#index"
  #get 'inscription', to: 'subscribers#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/inscription", :to => "users#create"
  resources :users
end
