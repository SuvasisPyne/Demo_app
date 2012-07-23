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
  @post=@user.post.create!(params[:post])
  redirect_to user_path(@user)
 end
 def destroy
 end
 def edit
 end
end
