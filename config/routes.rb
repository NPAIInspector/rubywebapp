Rails.application.routes.draw do
  resources :ids
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/patients/:id', to: 'patients#show'
  get '/routes/:index', to: 'routes#index'
  root to: redirect('/ids/')
  # Defines the root path route ("/")
  # root "articles#index"
end
