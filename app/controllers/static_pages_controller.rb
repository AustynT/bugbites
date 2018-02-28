class StaticPagesController < ApplicationController
  def home
  end

  def about_me
  end

  def admin
    @countries = Country.order('name ASC')
    @states = State.all
    @blogs = Blog.all
  end
end
