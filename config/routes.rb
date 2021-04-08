Rails.application.routes.draw do
  root to: 'homes#top'
  get '/about' => 'homes#about'
    
  resources :chiropractors, only: [:index, :show, :edit, :update]
  resources :users, only: [:show, :edit, :update]
  resources :articles, only: [:index, :show]
  
  devise_for :chiropractors
  devise_for :admins
  devise_for :users
  
  namespace :adimns do
    root to: 'homes#top'
    resources :articles, only: [:index, :show, :new, :create, :destroy, :edit, :update]
    resources :chiropractors, only: [:edit, :update]
    resources :users, only: [:index, :edit, :update]
    resources :treatments, only: [:index, :create, :edit, :update, :destroy]
    resources :genres, only: [:index, :create, :destroy, :edit, :update]
  end
  
  namespace :chiropractors do
    resources :reservations, only: [:show, :create, :destroy]
  end
  
  namespace :users do
    resources :reservations, only: [:show, :create, :destroy]
    resources :bookmarks, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
