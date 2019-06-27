class ProductsController < ApplicationController
  def show
    @product = Product.find(param[:id])
  end

  def index
    @products = if params[:kind]
      Product.send params[:kind]
    else
      Product.all
    end.page(params[:page]).per_page(8)
  end
end

