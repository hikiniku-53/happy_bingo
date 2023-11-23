Rails.application.routes.draw do
  get 'numbers/index'
  get 'numbers/create'
  get 'numbers/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"

  resources :numbers, only: [:index, :create, :destroy]
end
