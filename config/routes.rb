Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get 'home/about' =>'homes#about'
  resources :books do
    resource :favorites, only:[:create, :destroy]
    resources :book_comments, only:[:create, :destroy]
  end
  resources :users do
    resources :users, only:[:edit, :update, :index, :show]
    resource :relationships, only:[:create, :destroy]
    get :followers, on: :member
    get :followings, on: :member
  end



end
