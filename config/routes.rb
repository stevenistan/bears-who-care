Rails.application.routes.draw do

  devise_for :users
  
  root to: 'posts#index'
  
  get '/posts/new' => 'posts#new'
  get '/posts/index' => 'posts#index'

  post 'posts' => 'posts#create'
  
end
