class MerchesController < ApplicationController
  def index
    @merch = Merch.all
  end

  def show
    @merch = Merch.find(params[:id])
  end

  private

  def merch_params
    params.require(:merch).permit(:name, :price, :photo)
  end
end
