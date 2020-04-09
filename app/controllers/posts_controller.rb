class PostsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :update, :index, :update, :destroy]
	before_action :post_correct_user, only: [ :destroy]
	before_action :correct_user, only: [ :update]

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			flash[:notice] = "create post."
			redirect_to posts_path
		else
			@posts = Post.all.order(id: "DESC")
			@favorite = Favorite.new
			@comment = Comment.new
			render "index"
			# render posts_path
		end
	end

	def index
		@posts = Post.all.order(id: "DESC")
		@post =Post.new
		@favorite = Favorite.new
		@comment = Comment.new
		user_ids = Favorite.joins(:post).group("posts.user_id").order("count_all desc").limit(3).count.keys
		# .joins=内部結合 結合しないものは削除する favoriteとpostが結びついた物をの中でpost.user_idでグループ分けレコード数をカウント 全て昇順に並べ表示数(3)
		# 配列=(keys(user_id),velue(いいね件数))のkeysのみを取得
		@ranks = User.where(id:user_ids).sort_by{ |user| user_ids.index(user.id)}
		# whereによりid順に並び替えられてしまった為.sort_by(昇順に並び替える)を使用。
		# .indexで順番をふり並び替える

		# @rankings = Post.find(Favorite.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
		# いいねランキング = post_idが同じものグループ分けしていいね数の昇順に 表示数 pluckでidを配列に 配列として取り出したidをfind
	end

	def update
		@post = Post.find(params[:id])
		if @post.update!(post_params)
			flash[:notice] = "update post."
			redirect_to user_path(current_user)
		else
			@posts = Post.all.order(id: "DESC")
			render posts_path
		end
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


