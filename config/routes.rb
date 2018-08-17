Rails.application.routes.draw do
  get 'cocktails/doses'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "cocktails#index"

  resources :cocktails, only: [:edit, :show, :index, :new, :create, :destroy] do
    resources :doses
  end
end
