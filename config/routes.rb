Rails.application.routes.draw do
  get 'registrations_controller/create'
  devise_for :users, controllers: { registrations: "registrations" }
  devise_scope :user do
    get '/sign_in' => 'devise/sessions#create'
  end
  root to: 'pages#home'
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
  resources :users
  resources :blogs
  resources :enquiries, only: [:new, :create, :show]
  resources :clients do
    resources :preconsultations, only: [:new, :create, :show]
    resources :consultations
    resources :packages
  end
end
