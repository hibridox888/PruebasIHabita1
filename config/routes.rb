Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  resource :docs
  post '/docs/new', to:'docs#create'
  get '/docs/vista', to: 'docs#vista'
  get '/docs/vista2', to: 'docs#vista2'
  post '/docs/vista2', to: 'docs#vista2'
  post '/docs/cambioestado', to: 'docs#cambioestado' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
