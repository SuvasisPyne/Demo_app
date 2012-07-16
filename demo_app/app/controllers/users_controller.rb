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
   User.create!(params[:user])
   redirect_to(user_path(@user))
  end
  def delete
   redirect_to(user_path(@user))
  end
  def edit
  end
end
