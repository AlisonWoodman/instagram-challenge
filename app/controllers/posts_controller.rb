class PostsController < ApplicationController

  def new
    @user = current_user
    @post = current_user.posts.new
  end

  def create
    post = Post.new(post_params)
    current_user.posts << post
    current_user.save
    p "YOU MADE IT: #{@current_user.posts}"
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:description, :image)
  end
end
