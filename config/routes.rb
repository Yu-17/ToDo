Rails.application.routes.draw do
  # get 'lists/new'
  # root 'top#index'
  # post 'lists' => 'lists#create'
  # get 'top' => 'top#index'
  root 'top#index'
  resources :lists

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
