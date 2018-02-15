Rails.application.routes.draw do
  get 'users/login'

  get 'users/signup'

  get 'contents/index'

  get 'contents/detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
