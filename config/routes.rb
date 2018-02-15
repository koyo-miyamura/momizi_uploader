Rails.application.routes.draw do
  get 'users/login'

  get 'users/signup'

  get 'contents/index'

  get 'contents/detail'

  root 'contents#index'
end
