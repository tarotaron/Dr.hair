Rails.application.routes.draw do
  devise_for :admins, path: :admin
  devise_for :users
  #  devise_for :admins, controllers: {
  #     sessions:      'admins/sessions',
  #     passwords:     'admins/passwords',
  #     registrations: 'admins/registrations'
  # }
  # devise_for :users, controllers: {
  #     sessions:      'users/sessions',
  #     passwords:     'users/passwords',
  #     registrations: 'users/registrations'
  # }

  namespace :admin do
  	resources :forms, only:[:index, :create, :destroy]
  	resources :lengths, only:[:index, :create, :destroy]
    resources :styles, only:[:index, :create, :destroy]
  end

    resources :posts, only:[:index, :create, :update, :destroy]
    resources :users, only:[:show, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
