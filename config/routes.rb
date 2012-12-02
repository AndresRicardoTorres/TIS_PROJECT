TISProject::Application.routes.draw do

  devise_for :users
  resources :users
  resources :modulos
  resources :projects
  resources :user_histories
  
  authenticated :user do
    root :to => 'home#index'

  end

  devise_scope :user do
    get "/", :to => "devise/sessions#new"
  end

end