class StaticPagesController < ApplicationController
  access all: [:home, :about_me], user: :all
  def home
    @blog = Blog.order("RANDOM()").limit(1)
  end

  def about_me
  end

  def admin
    @countries = Country.order('name ASC')
    @states = State.all
    @blogs = Blog.all
  end
end
