Rails.application.routes.draw do
  get 'users/login'

  get 'users/signup'

  get  'contents/index'
  post 'contents/new', to: 'contents#new', as: :contents_new

  get 'contents/detail'

  root 'contents#index'
end
