class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    # @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save(users_params)
      redirect_to edit_user_registration_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    user_name = params[:user]
    @user.first_name = user_name[:first_name]
    @user.last_name = user_name[:last_name]
    @user.save
    redirect_to root_path
  end

  def destroy
    redirect_to new_user_session_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone)
  end
end
