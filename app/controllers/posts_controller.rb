class PostsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :update, :index, :update, :destroy]
	before_action :correct_user, only: [:update, :destroy ]

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		@post.save
		flash[:notice] = "create post."
		redirect_to posts_path
	end

	def index
		@posts = Post.all
		@post =Post.new
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		flash[:notice] = "update post."
		redirect_to user_path(current_user)
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to user_path(current_user)
	end

private

	def post_params
		params.require(:post).permit(:post_image, :title, :post_body, :winding, :item, :size, :user_id)
	end
end


