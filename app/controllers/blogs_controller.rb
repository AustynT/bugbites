class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  layout 'blog'

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
    1.times { @blog.photos.build }
  end

  def show
  end

  def edit
    1.times { @blog.photos.build }
  end

  def create
    @blog = Blog.new(blog_params)
    
    if @blog.save
      redirect_to @blog, notice: 'Your post is live'
    else
      render :new
     end
    end

  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: "You have updated your blogs post"
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path

  end

  private

  def blog_params
    params.require(:blog).permit(:title,:body, :main_photo, :state_id, photos_attributes: [:my_photo])
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
