Rails.application.routes.draw do
  # get 'doses/show'
  # get 'doses/update'
  # get 'doses/edit'
  # get 'doses/destroy'
  # get 'doses/new'
  # get 'ingredients/show'
  # get 'ingredients/update'
  # get 'ingredients/edit'
  # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # get 'cocktails/show'
  # get 'cocktails/edit'
  # get 'cocktails/delete'
  # get 'cocktails/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
end
