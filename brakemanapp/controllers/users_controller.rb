class UsersController < ApplicationController
  def create
    User.create(name: params[:name], email: params[:email])
  end
end
