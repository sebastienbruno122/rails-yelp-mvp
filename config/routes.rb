Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlget '/tasks', to: 'tasks#index'

  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create]
  end
end
