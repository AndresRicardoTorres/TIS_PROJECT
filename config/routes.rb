TISProject::Application.routes.draw do

  get '/estimations/test'
  post '/estimations/gettest'
  
  
  devise_for :users
  resources :users
  resources :modulos
  resources :projects do
	resources :user_histories do
		resources :estimations 
	end
  end

  authenticated :user do
    root :to => 'home#index'

  end

  devise_scope :user do
    get "/", :to => "devise/sessions#new"
  end

end