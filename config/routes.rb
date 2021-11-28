Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get "bienvenida", to:"home#index"
  get "perfil", to:"users#edit"
  root to:"home#index" #ruta base

  # get "articles/user/:user_id", to:"articles#from_author"

  resources :users, only: [:update]
  resources :articles do 
      get "user/:user_id", to:"articles#from_author", on: :collection
  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "articles", to:"articles#index"
  # get "articles/new", to:"articles#new", as: :new_articles
  # get "articles/:id", to:"articles#show"
  # get "articles/:id/edit", to:"articles#edit"
  # patch "/articles/:id", to:"articles#update", as: :article #EDIT
  # post "articles", to:"articles#create" #SEND
  # delete "articles/:id", to: "articles#destroy"
end
