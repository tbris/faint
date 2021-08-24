Rails.application.routes.draw do
  resources :posts, except: [:new, :edit, :update]
  resources :replies, only: [:create]
  root 'posts#index'
end
