class StoreController < ApplicationController
  def index
    @products = Product.all.shuffle
  end

  def product
    @product = Product.find(params[:id])
  end

  def category
    @products = Product.where(category: params[:c]).all
  end

  def search
    @products = Product.search(params[:q])
  end
end
