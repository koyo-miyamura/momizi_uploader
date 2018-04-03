class SessionsController < Devise::SessionsController
  def create
    render layout: 'logout-template'
  end
end