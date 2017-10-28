Rails.application.routes.draw do

  devise_for :users
  
  root to: 'posts#index'
  
  get '/posts/new' => 'posts#new'
  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show', as: :post

  get '/posts/comments/new' => 'comments#new'
  #get '/comments' => 'posts#show'

  post 'posts' => 'posts#create'
  post 'comments' => 'comments#create'
  
end
