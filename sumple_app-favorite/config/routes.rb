Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'home#index'
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
