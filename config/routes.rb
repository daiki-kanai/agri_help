Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :top, only: :index
  resources :maps, only: :index
  resources :users, only: :show
  resources :messages, only: [:index, :create]
  resources :rooms, only: [:create, :show, :index]
end
