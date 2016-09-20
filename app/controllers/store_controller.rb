class StoreController < ApplicationController
  before_filter :register_view

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

  private
  def register_view
    View.create(remote_ip: request.remote_ip)
  end
end
