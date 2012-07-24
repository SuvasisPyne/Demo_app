class PostsController < ApplicationController
 def new
  @user=User.find(params[:user_id])
  @post=@user.posts.new
 end
 def show
  @user=User.find(params[:user_id])
  @post=@user.posts.find(params[:id])
 end
 def index
  @user=User.find(params[:id])
 end
 def create
  @user=User.find(params[:user_id])
  @post=@user.posts.create!(params[:post])
  redirect_to user_path(@user)
 end
 def destroy
  @user=User.find(params[:user_id])
  @user.posts.find(params[:id]).destroy 
  redirect_to user_path(@user)
 end
 def edit
 end
end
