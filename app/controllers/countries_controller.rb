class CountriesController < ApplicationController

  def index
    @countries = Country.includes(:states).all
  end

  def create
    @country = Country.new(country_params)
  end

  def show
    @country = Country.find_by_name(params[:name])
  end

  private

  def country_params
    params.require(:country).permit(:name)
  end
end
