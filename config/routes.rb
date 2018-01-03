Rails.application.routes.draw do


  devise_for :users

  root to: "pages#home"

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :matches


end
