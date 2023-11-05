class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = Admin.all
  end

  def show
  end

  def new
    @user = Admin.new
  end

  def create
    @user = Admin.new(admin_params)

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
    @user = Admin.find(params[:id])
  end

  def admin_params
    params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end
end
