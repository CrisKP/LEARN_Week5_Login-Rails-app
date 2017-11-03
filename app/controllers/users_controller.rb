class UsersController < ApplicationController

  def create
    params.permit(:username, :password, :name, :street, :city, :state, :postal, :country, :email)

    if params.has_key?(:username) && params.has_key?(:password)

      if params[:username] != nil && params[:password] != nil
        @user = User.new(params[:username], params[:password], params[:name], params[:street], params[:city], params[:state], params[:postal], params[:country], params[:email])
        session[:user] = @user.to_yaml
        redirect_to '/users/confirmation'
      end
    end
  end

  def confirmation
    @user = YAML.load(session[:user])
    if params.has_key?(:submit)
      if params[:username] == @user.show_username && params[:password] == @user.show_password
      redirect_to '/users/registration'
      else
          flash[:notice] = "username and password not found"
          # render 'confirmation.html.erb'
      end
    end
  end
end
