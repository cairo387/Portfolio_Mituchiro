Rails.application.routes.draw do
  get 'treatments/index'
  get 'treatments/edit'
  get 'reservations/show'
  get 'genres/index'
  get 'genres/edit'
  
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/edit'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
