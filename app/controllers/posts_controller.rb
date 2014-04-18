class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
      @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "Post Created"
      redirect_to users_path(@post.user_id)
    else
      alert[:notice] = "Post not created"
      redirect_to users_path(@post.user_id)
    end
  end

  def show
    @post = Post.find(params[:id])
  end


private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
