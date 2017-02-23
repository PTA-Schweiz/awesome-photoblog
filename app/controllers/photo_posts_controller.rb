class PhotoPostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @photo_posts = PhotoPost.all.limit(10)
  end

  def show
    @photo_post = PhotoPost.find params[:id]
  end

  def create
    @photo_post = PhotoPost.new params.require(:photo_post).permit(:name, :description, :photo)
    @photo_post.user = current_user
    if @photo_post.save
      redirect_to photo_post_path @photo_post
    else
      render :new
    end
  end

  def new
    @photo_post = PhotoPost.new
  end
end
