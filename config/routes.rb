Rails.application.routes.draw do
  resources :messages, only: [:index]
  resources :sessions, only: [:new, :create]

  root 'sessions#new'

  # mount ActionCable.server => '/cable'
end
