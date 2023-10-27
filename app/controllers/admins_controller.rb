class AdminsController < ApplicationController

    include AdminHelper

    before_action :authenticate_admin!
    before_action :set_user, only: [:show, :edit, :update, :destroy]
  
    def index
      @users = User.all # Replace "User" with the actual model name for your admin users.
    end
  
    def show
    end
  
    def new
      @user = User.new # Replace "User" with the actual model name for your admin users.
    end
  
    def create
      @user = User.new(admin_params) # Replace "User" with the actual model name for your admin users.
  
      if @user.save
        redirect_to @user, notice: 'Admin user was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @user.update(admin_params)
        redirect_to @user, notice: 'Admin user was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @user.destroy
      redirect_to admins_url, notice: 'Admin user was successfully destroyed.'
    end
  
    private
  
    def set_user
      @user = User.find(params[:id]) # Replace "User" with the actual model name for your admin users.
    end
  
    def admin_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin) # Include the necessary attributes for your admin users.
    end
  end
  