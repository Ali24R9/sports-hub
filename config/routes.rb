SportsBlog::Application.routes.draw do
  root to: "welcome#index"
  devise_for :users
  resources :posts
  resources :users
end
