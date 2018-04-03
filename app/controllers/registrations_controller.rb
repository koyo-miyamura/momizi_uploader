class RegistrationsController < Devise::RegistrationsController
  def create
    render layout: 'logout-template'
  end
end