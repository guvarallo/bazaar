class AdsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :current_user,       except: [:index, :show]

  def index
    @search =  Ad.search do
      fulltext params[:search]
      facet :brand_id, :carrier_id, :condition_id
      with(:brand_id, params[:brand]) if params[:brand].present?
      with(:carrier_id, params[:carrier]) if params[:carrier].present?
      with(:condition_id, params[:condition]) if params[:condition].present?
    end
    @ads = @search.results
  end

  def show
    @ad = Ad.find(params[:id])
    @pictures = @ad.pictures.all
  end

  def new
    @ad = Ad.new
    @picture = @ad.pictures.build
  end

  def create
    @ad = Ad.new(ad_params)
    @ad.user = current_user

    if @ad.save
      params[:pictures]['avatar'].each do |a|
        @picture = @ad.pictures.create!(:avatar => a, :ad_id => @ad.id)
      end
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
