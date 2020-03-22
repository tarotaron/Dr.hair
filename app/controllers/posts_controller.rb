class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			flash[:notice] = "create post."
			redirect_to posts_path
		else 
			render 'new'
		end
	end

	def index
		@posts = Post.all
		@post =Post.new
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			flash[:notice] = "update post."
			redirect_to 'index'
		else
			render 'edit'
		end
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to 'index'
	end

private

	def post_params
		params.require(:post).permit(:post_image, :title, :post_body, :winding, :item, :size, :user_id)
	end
end


