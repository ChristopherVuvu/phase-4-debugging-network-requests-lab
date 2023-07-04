Rails.application.routes.draw do
  resources :toys, :index, :create, :update, :destroy
  get '/toy', to: 'toys#index'
  post '/toy', to: 'toys#create'
  get '/toy/:id', to: 'toys#show'
  patch '/toy/:id', to: 'toys#update'
  put '/toy/:id', to: 'toys#update'
  delete '/toy/:id', to: 'toys#destroy'
end
