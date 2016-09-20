class StoreController < ApplicationController
  def index
    @products = Product.all.shuffle
  end

  def product
    @product = Product.find(params[:id])
  end
end
