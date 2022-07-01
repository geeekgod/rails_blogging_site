Rails.application.routes.draw do
  resources :likes
  resources :blogs
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "blogs#index"
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
        resources :test
    end
  end
end
