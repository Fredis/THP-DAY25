Rails.application.routes.draw do
  
	resources 'users', only: [:new, :create, :show, :index, :edit, :update, :destroy]

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/login', to: 'session#destroy'
  
  get '/universe', to: 'universe#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
