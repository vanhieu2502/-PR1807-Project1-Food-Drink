class ProductOrdersController < ApplicationController
  before_action :login
  before_action :correct_product_order,   only: :destroy
  def create
    @order = current_order
    @order.product_orders.build(product_order_params)
    @order.save
    session[:order_id] = @order.id
    flash[:success] = "Product added"
    redirect_to cart_path
  end

  def update
    @order = current_order
    @product_order = @order.product_orders.find(params[:id])
    @product_order.update_attributes(product_order_params)
    @product_orders = @order.product_orders
  end

  def destroy
    @product_order.destroy
    flash[:success] = "Product deleted"
    redirect_to request.referrer || root_url
  end

private
  def product_order_params
    params.require(:product_order).permit(:quantity, :product_id)
  end

  def login
    redirect_to login_path unless logged_in?
  end

  def correct_product_order
    @product_order = current_order.product_orders.find_by(id: params[:id])
    redirect_to root_url if @product_order.nil?
  end
end
