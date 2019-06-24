Rails.application.routes.draw do
  get 'enquiries/show'
  get 'enquiries/new'
  get 'enquiries/create'
  root to: 'pages#home'
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
  resources :users, only: [:show]
  resources :blogs
  resources :enquiries, only: [:new, :create, :show]
  resources :preconsultations, only: [:new, :create, :show]
  resources :clients do
    resources :consultations
    resources :packages
  end
end
