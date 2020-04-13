class SearchController < ApplicationController
  def search
    @posts = Post.search(params[:search]).order(id: "DESC")
    # viewのformで取得したパラメータをモデルに渡す
    @favorite = Favorite.new
    @comment = Comment.new
    @post = Post.new
    @search = params[:search]
  end
end
