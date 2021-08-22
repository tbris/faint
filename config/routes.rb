Rails.application.routes.draw do
  resources :posts, except: [:new, :edit, :update]
  root 'posts#index'
end
