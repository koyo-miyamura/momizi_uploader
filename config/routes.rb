Rails.application.routes.draw do
  devise_for :users, :controllers => {
 :registrations => 'sessions/registrations'
}
  # get 'users/login'

  # get 'users/signup'

  get  'contents/index'
  post 'contents/create', to: 'contents#create', as: :contents_create

  get 'contents/detail'
  post 'contents/create_comment', to: 'contents#create_comment', as: :create_comment
  delete 'contents/delete'

  root 'contents#index'
end