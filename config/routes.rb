Rails.application.routes.draw do
  # get 'publishers/new'
  # get 'publishers/create'
  # get 'publishers/update'
  # get 'publishers/edit'
  # get 'publishers/distroy'
  # get 'publishers/index'
  # get 'publishers/show'
  # get 'authors/new'
  # get 'authors/create'
  # get 'authors/update'
  # get 'authors/edit'
  # get 'authors/distroy'
  # get 'authors/index'
  # get 'authors/show'
  # get 'categories/new'
  # get 'categories/create'
  # get 'categories/update'
  # get 'categories/edit'
  # get 'categories/distroy'
  # get 'categories/index'
  # get 'categories/show'
  get 'about/index'
  root 'books#index'
  resources :books
  resources :authors
  resources :categories
  resources :publishers
  get 'about' => 'about#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
