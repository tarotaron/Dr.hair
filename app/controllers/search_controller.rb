class SearchController < ApplicationController

  def search
  	@posts = Post.search(params[:search])
  	# viewのformで取得したパラメータをモデルに渡す
	@favorite = Favorite.new
	@comment = Comment.new
  end
end
