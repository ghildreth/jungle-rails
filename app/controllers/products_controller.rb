class ProductsController < ApplicationController


  def show
    @product = Product.find params[:id]
  end

  def index
    @products = Product.all.order(created_at: :desc)
  end


end
