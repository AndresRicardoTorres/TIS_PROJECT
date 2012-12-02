TISProject::Application.routes.draw do

  get "estimations/index"

  get "estimations/new"

  get "estimations/edit"

  get "estimations/create"

  get "estimations/update"

  get "estimations/destroy"

  # get "metric_parameter/new"

  # get "metric_parameter/create"

  # get "estimation/index"

  # get "estimation/show"

  # get "estimation/new"

  # get "estimation/edit"

  # get "estimation/create"

  # get "estimation/update"

  # get "estimation/destroy"
  
  resources :estimation do
    resources :metric_parameter
  end
  

  devise_for :users
  resources :users
  resources :modulos
  resources :projects do
    resources :user_histories
  end

  authenticated :user do
    root :to => 'home#index'

  end

  devise_scope :user do
    get "/", :to => "devise/sessions#new"
  end

end