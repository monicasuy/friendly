Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show] do
    resources :hobbies, only: %i[index new create]
  end
  resources :hobbies, only: %i[destroy]
end
