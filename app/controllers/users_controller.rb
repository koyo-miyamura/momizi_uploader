class UsersController < ApplicationController
  def login
    render layout: 'logout-template'
  end

  def signup
    render layout: 'logout-template'
  end
end
