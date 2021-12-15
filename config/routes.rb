Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: :show

end
