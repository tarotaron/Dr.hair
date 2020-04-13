class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.post_id = @post.id
    @comment.save
    render 'posts/comments'
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.post_id = @post.id
    @comment.destroy
    render 'posts/comments'
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :user_id, :post_id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
