Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index" # ここにログイン後の画面のコントローラーとアクションを指定
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end

  # Define your application routes per the DSL in http://localhost:3000/users/sign_up
  #元データhttps://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :users, only: :show
end