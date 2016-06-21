Rails.application.routes.draw do
  get 'face_code/home'

  devise_for :users

  root 'face_code#home'

  resources :posts


end
