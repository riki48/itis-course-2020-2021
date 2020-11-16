Rails.application.routes.draw do
  root to: 'home#show'

  resources :tasks do
    resources :comments, only: [:create]
  end

  resources :comments, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
