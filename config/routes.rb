Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'cocktails', to: 'cocktails#index'

  # get 'cocktails/new', to: 'cocktails#new'
  # get 'cocktails/:id', to: 'cocktails#show'

  # post 'cocktails', to: 'cocktails#create'
  # delete 'doses/:id', to: 'doses#destroy'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
