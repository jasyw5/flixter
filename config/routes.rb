Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :courses, only: [:index, :show]
  namespace :instructor do
    resources :courses, only: [:new, :create, :show]
      resources :sections, only: [:new, :create]
  end
end
