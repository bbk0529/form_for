Rails.application.routes.draw do
  
  devise_for :users
  root 'tweets#index'
  resources :tweets 
  # get 'blogs/idex'

  # get 'blogs/new'

  # get 'blogs/show'

  # get 'tweets/index'

  # get 'tweets/new'

  # get 'tweets/create'

  # get 'tweets/show'

  # get 'tweets/edit'

  # get 'tweets/update'

  # get 'tweets/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
