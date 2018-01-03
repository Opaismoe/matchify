Rails.application.routes.draw do


  devise_for :users

  # root to: "pages#home"
  resources :matches
  resources :profiles, only: [:new, :edit, :create, :update]

  authenticated :user do
    root 'pages#home', as: :authenticated_root
  end


  devise_scope :user do
    root to: "devise/sessions#new"
  end

end
