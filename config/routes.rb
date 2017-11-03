Rails.application.routes.draw do
  get 'users/create'
  post 'users/create'

  get 'users/confirmation'
  post 'users/confirmation'

  get 'users/registration'
  post 'users/registration'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
