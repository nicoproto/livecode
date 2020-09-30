Rails.application.routes.draw do
  root to: 'universes#index'
  resources :universes do
    resources :characters, only: :create
  end
  resources :characters, only: :destroy do
    resources :character_tags, only: [ :new, :create]
  end
end
