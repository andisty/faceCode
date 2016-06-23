Rails.application.routes.draw do

  get 'user_posts/:user_id' => 'posts#user', as: :user_posts

  get 'face_code/home'

  devise_for :users
  resources :users, only: [:index]

  root 'face_code#home'

  resources :posts  do
    resources :likes
  end


end
