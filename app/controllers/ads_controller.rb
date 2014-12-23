class AdsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :current_user,       except: [:index, :show]

  def index
    @ads = Ad.all
    @brands = Brand.all
    @carriers = Carrier.all
  end

  def show
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(ad_params)
    @ad.user = current_user

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
