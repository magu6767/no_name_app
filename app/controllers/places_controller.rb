class PlacesController < ApplicationController
  def index
    # 位置情報を利用して近くの場所を検索
    @places = Place.near([params[:latitude], params[:longitude]], 10) # 10km以内の場所を検索
  end

  def show
    @place = Place.find(params[:id])
  end
end
