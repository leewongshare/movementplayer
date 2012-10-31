class PurchasesController < ApplicationController

  def create
    @purchase = Purchase.new(params[:purchase])
    @purchase.user = User.first
    @purchase.save
    redirect_to root_path
  end

  def new
    @purchase = Purchase.new
    @purchase.song = Song.find(params[:song_id])
  end

end