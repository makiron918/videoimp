Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: [:index, :show] do
    resources :comments, only: :create
  end
end
