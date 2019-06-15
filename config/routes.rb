Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users
  resources :blogs
  resources :services, only: [:index, :show] do
    resources :constulations
  end
end
