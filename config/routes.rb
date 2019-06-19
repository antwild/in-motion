Rails.application.routes.draw do
  root to: 'pages#home'
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
  resources :users
  resources :blogs
  resources :services, only: [:index, :show] do
    resources :preconsultations
  end
end
