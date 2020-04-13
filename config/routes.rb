Rails.application.routes.draw do
  get '/search' => 'search#search'
  devise_for :admins, path: :admin
  devise_for :users

  namespace :admin do
    resources :forms, only: [:index, :create, :destroy]
    resources :lengths, only: [:index, :create, :destroy]
    resources :styles, only: [:index, :create, :destroy, :update]
  end

  resources :users, only: [:show, :create, :update, :destroy]
  resources :posts, only: [:index, :create, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

  get "/style", to: "styles#show", as: "style"
  get "/styles", to: "styles#index", as: "styles"
  # resourcesでstyle書いてたらshowに:idが発行されてstyleの:id指定が必要になってしまった
  # sを外すとindexが生成されない為直書き
  root 'homes#top'
  get "home/about" => "homes#about"
end
