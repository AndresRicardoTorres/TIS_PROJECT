TISProject::Application.routes.draw do
  
  devise_for :users
  resources :users
  resources :user_histories
  resources :modulos
  resources :projects

  # devise_scope :user do
    # get "/", :to => "devise/sessions#new"
  # end

  authenticated :user do
    root :to => 'home#index'
  end
      root :to => 'home#index'
end