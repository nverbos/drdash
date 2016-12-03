Rails.application.routes.draw do
  get 'home/index'

  get 'system/list'
  post 'system/create'
  get 'system/show'
  get 'system/edit'
  get 'system/delete'
  get 'system/show_programs'
  post 'system/add_program'
  get 'system/remove_program'

  get 'program/list'
  get 'program/show'
  get 'program/delete'
  post 'program/create'

  post 'device/create'
  get 'device/delete'

  post 'event/create'
  get 'event/delete'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
