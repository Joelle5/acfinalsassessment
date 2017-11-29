Rails.application.routes.draw do

  #devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'pages#index'



  namespace :users do
    resources :notes do
      resource :likes, only: [:create, :destroy]
    end
  end
  
  resources :relationships, only: [:create, :destroy]
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
