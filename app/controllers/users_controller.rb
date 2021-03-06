class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :update]
  before_action :correct_user, only: [:update]

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(id: "DESC")
    @comment = Comment.new
    @post = Post.new
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user)
    else
      @posts = @user.posts.order(id: "DESC")
      @comment = Comment.new
      @post = Post.new
      render user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :icon_image)
  end

  def correct_user
    user = User.find(params[:id])
    if user.id != current_user.id
      redirect_to user_path(current_user)
    end
  end
end