class UsersController < ApplicationController

	load_and_authorize_resource

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      if current_user.admin?
        redirect_to users_index_url
      else
        redirect_to users_path
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
    if @user.update_attributes(user_params)
      if current_user.admin?
        redirect_to users_index_url
      else
        redirect_to users_path
      end
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "Successfully deleted User."
      redirect_to users_path
    end
  end 


  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password, :avatar, :admin)
  end

end
