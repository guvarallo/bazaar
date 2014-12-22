class AdsController < ApplicationController

  def index; end

  def show
    render 'ad_example'
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(ad_params)

    if @ad.save
      flash[:notice] = 'Your ad was successfully created'
      redirect_to ad_path(@ad)
    else
      render new_ad_path
    end
    
  end

  private
  def ad_params
    params.require(:ad).permit!
  end
end
