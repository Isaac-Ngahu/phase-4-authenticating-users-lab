Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to:'SessionsController#create'
  delete '/logout',to:'SessionsController#destroy'
  get '/me', to:'UsersController#show'
end
