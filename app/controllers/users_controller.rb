class UsersController < ApplicationController


  def new
  	@user = User.new
#ma variable d'instance qui créee un nouveau user
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
  end 

def show
	@user = User.find(params[:id])
end

def edit
    @user = User.find(params[:id])
end

def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
end

def destroy
	@user = User.find(params[:id])
	@user.destroy
	redirect_to new_user_path
end

private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
