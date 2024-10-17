Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  get 'articles/index'
 
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show, :index]
end
