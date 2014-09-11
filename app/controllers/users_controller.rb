class UsersController < ApplicationController
  
  def index
    @users = User.all.order(:user_name)
  end

  def show
    @user = User.find( params[:id] )
  end

end


