class AdsController < ApplicationController

  def index; end

  def show
    render 'ad_example'
  end

  def new
    @ad = Ad.new
  end

  def create
    binding.pry
  end

end