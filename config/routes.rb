Rails.application.routes.draw do

  devise_for :users
  
  root to: 'posts#index'
  
  get '/posts/new' => 'posts#new'
  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show', as: :post

  post 'posts' => 'posts#create'
  
end
