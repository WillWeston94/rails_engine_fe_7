class MerchantsController < ApplicationController

  def index
    @merchants = ApiService.get_merchants
    # binding.pry
  end

  def show 
    @merchant_items = ApiService.get_merchant_items(params[:id])
    # binding.pry
  end
  
end