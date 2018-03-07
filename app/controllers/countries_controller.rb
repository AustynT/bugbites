class CountriesController < ApplicationController
before_action :set_country, only: [:show,:edit,:update,:destroy]
access all: [:show, :index], user: :all
layout 'blog'

  def index
    @countries = Country.asc_order
  end

  def edit
    @country = Country.find(params[:id])
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to @country, notice: "You've created a new country"
    else
      render :new
    end
  end

  def new
    @country = Country.new
  end

  def show
  end

  def update 
    if @country.update(country_params)
      redirect_to @country, notice: "You're country has been updated"
    else
      render :edit
    end
  end

  def destroy
    @country.destroy
    redirect_to admin_path
  end

  private

  def set_country
    @country = Country.find(params[:id])
  end

  def country_params
    params.require(:country).permit(:name)
  end
end
