class CartsController < ApplicationController
  def show
    @product_orders = current_order.product_orders.page(params[:page]).per_page(3)
  end
end
