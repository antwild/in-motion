class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def show
    @user = Users.find(params[:id])
  end

  def new
    @user = Users.new
  end

  def create
    @user = Users.new
    @user.save(users_params)
    # redirect_to user_path(@user)
  end

  def update
  end

  def edit
  end

  def destroy
    @user = Users.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone)
  end
end
