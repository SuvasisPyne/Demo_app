class UsersController < ApplicationController
  def new
   @user = User.new
  end
  def show
   @user=User.find(params[:id])
  end
  def index
   @usrs = User.all 
  end
  def create
   @u=User.create!(params[:user])
   redirect_to user_path(@u)
  end
  def destroy
   @user = User.find(params[:id])
   @user.destroy
   redirect_to users_path
  end
  def edit
   @user = User.find(params[:id])
  end
  def update
   @user = User.find(params[:id])
   if @user.update_attributes(params[:user])
      flash[:notice] = 'The user was saved successfully.'
      redirect_to users_path
    else
      flash[:notice] = 'The user could not be saved.'
      redirect_to edit_user_path(@user)
    end
  end
end
