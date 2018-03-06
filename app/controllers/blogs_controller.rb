class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  layout 'blog'

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
    params.require(:blog).permit(:title,
                                 :body,
                                 :state_id, 
                                 :country_id,
                                 :main_photo, 
                                 :photo_one,
                                 :photo_two,
                                 :photo_three,
                                 :photo_four,
                                 :photo_five,
                                 :photo_six,
                                 :photo_seven,
                                 :photo_eight,
                                 :photo_nine,
                                 :photo_ten)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
