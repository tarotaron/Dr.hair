class FavoritesController < ApplicationController
	before_action :set_post

	def create
		@favorite = current_user.favorites.new(post_id: @post.id)
		@favorite.save
	end

	def destroy
		@favorite = current_user.favorites.find_by(post_id: @post.id)
		# current_userのいいねの中からpostのidが一致するもの
		@favorite.destroy
	end

	private

	def set_post
		@post = Post.find(params[:post_id])
	end
end
