class CommentsController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		comment = current_user.comments.new(comment_params)
		comment.post_id = post.id
		comment.save
		redirect_to request.referrer || root_url
	end

	def destroy
		post = Post.find(params[:post_id])
		comment = current_user.comments.find(params[:id])
		comment.post_id = post.id
		comment.destroy
		redirect_to request.referrer || root_url
	end

	private
	def comment_params
	    params.require(:comment).permit(:comment)
	end
end
