Rails.application.routes.draw do
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
end
