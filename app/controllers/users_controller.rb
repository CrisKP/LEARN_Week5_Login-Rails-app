class UsersController < ApplicationController

  def create
      params.require(:username)
      params.require(:password)
      params.permit(:name, :street, :city, :state, :postal, :country, :email)
  end
end
