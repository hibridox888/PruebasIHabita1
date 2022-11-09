Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  resource :docs
  post '/docs/new', to:'docs#create'
  post '/', to: 'main#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
