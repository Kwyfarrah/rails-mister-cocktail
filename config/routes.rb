Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    member do
      post :vote
    end
    resources :doses, only: [:index, :new, :create]
  end
  resources :doses, only: [:destroy]
  get 'random_cocktail', to: 'cocktails#random_cocktail', as: 'random_cocktail'
  get 'search_cocktails', to: 'cocktails#search_cocktails', as: 'search_cocktails'
end
