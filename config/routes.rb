Rails.application.routes.draw do


  
  get 'user_posts/:user_id' => 'posts#user', as: :user_posts

  get 'face_code/home'


  devise_for :users

  root 'face_code#home'

  resources :users
  resources :posts do
  resources :likes

  end
end
