class CartsController < ApplicationController
  
  def index
    redirect_to current_user.cart
  end

  def show
    @cart = current_user.cart
  end

  def checkout
    @cart = current_user.cart
    @shipping_methods = ShippingMethod.options_for_user(current_user)
    @order = Order.new
  end

  def shipping_cost
    @cart = current_user.cart
    @shipping_method = ShippingMethod.find params[:id]
  end

end