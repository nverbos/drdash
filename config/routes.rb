Rails.application.routes.draw do
  get 'home/index'

  get 'system/list'
  get 'system/new'
  post 'system/create'
  post 'system/create_device'
  patch 'system/update'
  get 'system/list'
  get 'system/show'
  get 'system/edit'
  get 'system/delete'
  get 'system/update'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
