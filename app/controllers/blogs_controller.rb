class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to @blog, notice: 'Your post is live'
    else
      render :new
     end
    end
  end

  def update
  end

  def destroy
  end

  private

  def blog_params
    params.require(:blog).permit(:title,:body, :main_photo)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end


end
