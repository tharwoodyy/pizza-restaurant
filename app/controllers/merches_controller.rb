class MerchesController < ApplicationController
  def index
    @merch = Merch.all
  end
end
