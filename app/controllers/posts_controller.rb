class PostsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :update, :index, :update, :destroy]
	before_action :post_correct_user, only: [ :destroy ]
	before_action :correct_user, only: [ :update ]

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
		@favorite = Favorite.new
		@comment = Comment.new
	end

	def update
		@post = Post.find(params[:id])
		@post.update!(post_params)
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

	# def correct_user
	#     user = User.find(params[:id])
	#     if user.id != current_user.id
	#     redirect_to top_path
	#     end
 #    end
# ↑のだとpostをupdate/destroyする際に(post)とするとpost.idのみでuser.idを定義できなくてエラーになった
# その為↓の書き方をした params[:user_id]だけだと文字列になってしまうので.to_iで整数に

	def post_correct_user
		if params[:user_id].to_i != current_user.id
			redirect_to top_path
		end
	end
	 def correct_user
		  post = Post.find(params[:id])
		    if post.user_id != current_user.id
		      redirect_to top_path
		    end
	end
end


