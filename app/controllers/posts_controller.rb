class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @posts = Post.all
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :url, :text)
  end
end
