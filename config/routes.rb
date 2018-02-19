Rails.application.routes.draw do
  get 'users/login'

  get 'users/signup'

  get  'contents/index'
  post 'contents/new', to: 'contents#new', as: :contents_new

  get 'contents/detail'
  post 'contents/new_comment', to: 'contents#new_comment', as: :new_comment

  root 'contents#index'
end