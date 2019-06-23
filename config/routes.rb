Rails.application.routes.draw do
  root to: 'pages#home'
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
  resources :users, only: [:show]
  resources :blogs
  resources :preconsultations
  resources :clients
  resources :packages
end
