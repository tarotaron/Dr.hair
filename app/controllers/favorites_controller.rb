class FavoritesController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		favorite = current_user.favorites.new(post_id: post.id)
		favorite.save
		redirect_to request.referrer || root_url
		# 一つ前のURL返す なかったらエラーが出ないようルートに返す
	end

	def destroy
		post = Post.find(params[:post_id])
		favorite = current_user.favorites.find_by(post_id: post.id)
		# current_userのいいねの中からpostのidが一致するもの
		favorite.destroy
		redirect_to request.referrer || root_url
	end
end
