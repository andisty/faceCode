Rails.application.routes.draw do

  get "/search(.:format)" => "search#index", as: :search

  get 'user_posts/:user_id' => 'posts#user', as: :user_posts

  get 'face_code/home'

  devise_for :users

  root 'face_code#home'

  resources :posts  do
    resources :likes
  end


end
