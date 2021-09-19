Rails.application.routes.draw do
  get '/:id', to: 'pages#show'

  get 'thread/:id', to: 'posts#show', as: 'thread'
  post 'posts', to: 'posts#create'
  root 'posts#index'
end
